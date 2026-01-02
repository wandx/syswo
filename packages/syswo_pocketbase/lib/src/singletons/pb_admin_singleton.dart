import 'dart:developer';

import 'package:pocketbase/pocketbase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syswo_core/syswo_core.dart';

class PbAdminSingleton {
  factory PbAdminSingleton() => _instance;

  PbAdminSingleton._();

  static final _instance = PbAdminSingleton._();

  late PocketBase _pocketBase;
  AuthStore? _authStore;

  PocketBase get pocketBase => _pocketBase;

  Future<void> setup() async {
    final token = await _getToken();
    if (token.isNotEmpty) {
      _authStore = AsyncAuthStore(
        initial: token,
        save: _saveToken,
        clear: _clearToken,
      );
    }

    _pocketBase = PocketBase(
      const String.fromEnvironment('PB_BASE_URL'),
      authStore: _authStore,
    );

    final isValid = _pocketBase.authStore.isValid;

    if (isValid) {
      await refresh();
      final user = _pocketBase.authStore.record;
      if (user != null) {
        log('Admin INFO ------------------------------------');
        log('🆔 ID: ${user.data['id'] ?? 'N/A'}');
        log('✉️ Email: ${user.data['email'] ?? 'N/A'}');
        log('👤 Name: ${user.data['name'] ?? 'N/A'}');
        log('✅ Verified: ${user.data['verified'] ?? 'N/A'}');
        log('🕒 Updated: ${user.data['updated'] ?? 'N/A'}');
        log('-----------------------------------------------');
      }
    }
  }

  Future<void> refresh() async {
    final authRecord = await _pocketBase
        .collection('_superusers')
        .authRefresh()
        .toResult();
    authRecord.when(
      data: (data) {
        _authStore?.save(data.token, data.record);
        _pocketBase = PocketBase(
          const String.fromEnvironment('PB_BASE_URL'),
          authStore: _authStore,
        );
      },
      error: (e, s) {
        log(e.toString());
      },
    );
  }

  Future<void> _saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('pb_admin_token', token);
  }

  Future<void> _clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('pb_admin_token');
  }

  Future<String> _getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('pb_admin_token') ?? '';
  }

  Future<RecordModel> loginWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final login = await _pocketBase
        .collection('_superusers')
        .authWithPassword(email, password);
    if (_authStore == null) {
      _authStore = AsyncAuthStore(
        initial: login.token,
        save: _saveToken,
        clear: _clearToken,
      );
    } else {
      _authStore?.save(login.token, login.record);
    }
    return login.record;
  }
}
