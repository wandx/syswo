import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:syswo_http/src/enums/connection_result_status.dart';
import 'package:syswo_http/src/exceptions/response_exception.dart';

class HttpErrorInterceptor implements Interceptor {
  @override
  Future<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    try {
      final response = await chain.proceed(chain.request);

      final statusCode = response.statusCode;
      if (statusCode < 200 || statusCode >= 300) {
        final bodyString = response.bodyString;

        final parseBody = jsonEncode(bodyString);

        late String message;

        if (parseBody.contains('message')) {
          final bodyMap = jsonDecode(bodyString) as Map<String, dynamic>;
          message = bodyMap['message'] as String;
        } else {
          message = 'HTTP Error with status code $statusCode';
        }

        throw ResponseException(
          status: ConnectionResultStatus.error,
          code: statusCode,
          httpCode: statusCode,
          message: message,
          body: bodyString,
        );
      }

      return response;
    } on SocketException catch (e, s) {
      throw ResponseException(
        status: ConnectionResultStatus.noInternet,
        code: 1101,
        httpCode: 500,
        message: e.message,
        stackTrace: s,
      );
    } on HandshakeException catch (e, s) {
      throw ResponseException(
        status: ConnectionResultStatus.noInternet,
        code: 1102,
        httpCode: 500,
        message: e.message,
        stackTrace: s,
      );
    } on TimeoutException catch (e, s) {
      throw ResponseException(
        status: ConnectionResultStatus.timeout,
        code: 1103,
        httpCode: 500,
        message: e.message ?? 'Request timed out',
        stackTrace: s,
      );
    } on Exception catch (e, s) {
      throw ResponseException(
        status: ConnectionResultStatus.error,
        code: 1100,
        httpCode: 500,
        message: e.toString(),
        stackTrace: s,
      );
    }
  }
}
