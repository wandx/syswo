// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:syswo_http/syswo_http.dart';

void main() {
  group('SyswoHttp', () {
    test('can be instantiated', () {
      expect(SyswoHttp(), isNotNull);
    });
  });
}
