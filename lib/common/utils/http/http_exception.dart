import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

@immutable
class HttpException implements Exception {
  final Response response;

  HttpException(this.response);
}
