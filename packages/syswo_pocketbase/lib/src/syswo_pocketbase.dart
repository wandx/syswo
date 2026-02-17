import 'package:syswo_pocketbase/syswo_pocketbase.dart';

export 'package:pocketbase/pocketbase.dart';

export 'entities/entities.dart';
export 'singletons/singletons.dart';

/// {@template syswo_pocketbase}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class SyswoPocketbase {
  factory SyswoPocketbase() => _instance;
  SyswoPocketbase._();

  static final SyswoPocketbase _instance = SyswoPocketbase._();

  bool isAdmin = false;

  PocketBase get pocketbase {
    if (isAdmin) return PbAdminSingleton().pocketBase;
    return PbSingleton().pocketBase;
  }

  Future<void> init() async {
    await PbSingleton().setup();
    await PbAdminSingleton().setup();
  }

  PbAdminSingleton get pbAdmin => PbAdminSingleton();
  PbSingleton get pbUser => PbSingleton();
}
