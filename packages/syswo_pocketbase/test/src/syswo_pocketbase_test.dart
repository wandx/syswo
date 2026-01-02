// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:syswo_pocketbase/syswo_pocketbase.dart';

void main() {
  group('SyswoPocketbase', () {
    test('can be instantiated', () {
      expect(SyswoPocketbase(), isNotNull);
    });
  });
}
