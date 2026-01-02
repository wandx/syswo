import 'package:flutter/foundation.dart';
import 'package:syswo_http/src/enums/connection_result_status.dart';

@immutable
class ResponseException implements Exception {
  ResponseException({
    required this.status,
    required this.code,
    required this.httpCode,
    required this.message,
    this.stackTrace,
    this.body = '',
  });

  final ConnectionResultStatus status;
  final num code;
  final num httpCode;
  final String message;
  final StackTrace? stackTrace;
  final String body;

  @override
  String toString() => message;
}
