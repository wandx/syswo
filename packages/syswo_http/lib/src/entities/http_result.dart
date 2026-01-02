import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syswo_http/src/exceptions/exceptions.dart';

part 'http_result.freezed.dart';

/// {@template http_result}
/// HttpResult description
/// {@endtemplate}
@freezed
sealed class HttpResult with _$HttpResult {
  const factory HttpResult.data({
    String? bodyString,
    Uint8List? bodyBytes,
  }) = _HttpResultData;

  const factory HttpResult.error({
    required ResponseException error,
    StackTrace? stackTrace,
  }) = _HttpResultError;
}
