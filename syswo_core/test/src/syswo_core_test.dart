// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:syswo_core/syswo_core.dart';

void main() {
  group('SyswoCore', () {
    test('can be instantiated', () {
      expect(SyswoCore(), isNotNull);
    });
  });
}
