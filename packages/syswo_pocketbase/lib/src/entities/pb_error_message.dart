import 'package:freezed_annotation/freezed_annotation.dart';

part 'pb_error_message.freezed.dart';

/// {@template pb_error_message}
/// PbErrorMessage description
/// {@endtemplate}
@freezed
abstract class PbErrorMessage with _$PbErrorMessage {
  /// {@macro pb_error_message}
  const factory PbErrorMessage({
    required String key,
    required String code,
    required String message,
  }) = _PbErrorMessage;

  const PbErrorMessage._();

  factory PbErrorMessage.fromExceptionResponse(
    String key,
    Map<String, dynamic> payload,
  ) {
    final currentCode = payload['code'] as String;
    final currentMessage = payload['message'] as String;
    return PbErrorMessage(
      key: key,
      code: currentCode,
      message: currentMessage,
    );
  }
}
