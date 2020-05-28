import 'package:dio/dio.dart';
import 'package:flyme_app/common/utils/log/logger.dart';

class DioLogger {
  static void onSend(String tag, RequestOptions options) {
    info('$tag - Request Path : [${options.method}] '
        '${options.baseUrl}${options.path}');
    info('$tag - Request Data : ${options.data.toString()}');
  }

  static void onSuccess(String tag, Response response) {
    info('$tag - Response Path : [${response.request.method}] '
        '${response.request.baseUrl}${response.request.path} '
        'Request Data : ${response.request.data.toString()}');
    info('$tag - Response statusCode : ${response.statusCode}');
    info('$tag - Response data : ${response.data.toString()}');
  }

  static void onError(String tag, DioError error) {
    if (null != error.response) {
      info('$tag - Error Path : [${error.response.request.method}] '
          '${error.response.request.baseUrl}${error.response.request.path} '
          'Request Data : ${error.response.request.data.toString()}');
      info('$tag - Error statusCode : ${error.response.statusCode}');
      info('$tag - Error data : '
          '${null != error.response.data ? error.response.data.toString() : ''}'
          '');
    }
    info('$tag - Error Message : ${error.message}');
  }
}
