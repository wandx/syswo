import 'dart:typed_data';

import 'package:syswo_http/src/entities/http_result.dart';
import 'package:syswo_http/src/exceptions/exceptions.dart';

HttpResult httpOk(String data, [Uint8List? bytes]) {
  return HttpResult.data(bodyString: data, bodyBytes: bytes);
}

HttpResult httpErr(ResponseException error, [StackTrace? stackTrace]) {
  return HttpResult.error(error: error, stackTrace: stackTrace);
}
