import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

@immutable
class BusinessException implements Exception {
  final String code;
  final String message;

  const BusinessException._({
    @required this.code,
    @required this.message,
  });

  factory BusinessException.exception({
    @required String code,
    @required String message,
  }) =>
      BusinessException._(code: code, message: message);

  @override
  String toString() {
    return 'BusinessException{code: $code, message: $message}';
  }
}

class BusinessError implements HttpError {
  RequestOptions request;
  Response response;
  DioErrorType type;
  dynamic error;

  BusinessError({
    this.request,
    this.response,
    this.type = DioErrorType.DEFAULT,
    this.error,
  });

  factory BusinessError.error({
    @required String code,
    @required String message,
    Response response,
  }) =>
      BusinessError(
        response: response,
        error: BusinessException.exception(code: code, message: message),
      );

  String get message => (error?.toString() ?? '');

  @override
  String toString() {
    var msg = 'BusinessError [$type]: $message';
    if (error is Error) {
      msg += '\n${error.stackTrace}';
    }
    return msg;
  }
}

class HttpError extends DioError {
  RequestOptions request;
  Response response;
  DioErrorType type;
  dynamic error;

  HttpError({
    this.request,
    this.response,
    this.type = DioErrorType.DEFAULT,
    this.error,
  }) : super(request: request, response: response, type: type, error: error);

  factory HttpError.fromDioError(DioError error) => HttpError(
        request: error.request,
        response: error.response,
        type: error.type,
        error: error.error,
      );

  String get message => (error?.toString() ?? '');

  @override
  String toString() {
    var msg = 'HttpError [$type]: $message';
    if (error is Error) {
      msg += '\n${error.stackTrace}';
    }
    return msg;
  }
}
