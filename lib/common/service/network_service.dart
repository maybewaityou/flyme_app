/// 网络请求服务
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flyme_app/common/config/config.dart';
import 'package:flyme_app/common/utils/http/http_exception.dart';
import 'package:flyme_app/common/utils/http/http_request.dart';
import 'package:flyme_app/common/utils/log/dio_logger.dart';
import 'package:flyme_app/shared/anticorruption/adapter/adapter.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:injectable/injectable.dart';

typedef Action = void Function();

@lazySingleton
class NetworkService {
  static const String tag = 'NetworkService';
  static NetworkService _instance;

  Dio _dio;

  factory NetworkService() {
    if (_instance == null) {
      _instance = NetworkService._internal();
    }
    return _instance;
  }

  NetworkService._internal() {
    final dioOptions = BaseOptions()..baseUrl = Config.value.baseUrl;
    _dio = Dio(dioOptions);

    if (EnvType.development == Config.value.environmentType ||
        EnvType.staging == Config.value.environmentType) {
      _dio.interceptors.add(InterceptorsWrapper(onRequest: (options) async {
        DioLogger.onSend(tag, options);
        return options;
      }, onResponse: (response) {
        DioLogger.onSuccess(tag, response);
        return response;
      }, onError: (error) {
        DioLogger.onError(tag, error);
        return error;
      }));
    }
  }

  Future<Either<HttpError, T>> request<T extends DataModel>(String url,
      {@required ParameterWrapper wrapper}) async {
    final meta = wrapper.meta;
    // TODO: 弹框判断

    try {
      Response response;
      final parameters =
          DataModelAdapter.camelize2SnakeCase(wrapper.params.toJson());
      if (meta.method == Method.post) {
        response = await _dio.post(url, data: parameters);
      } else {
        response = await _dio.get(url, queryParameters: parameters);
      }
      // TODO: 弹框判断

      // 转换格式
      final json = DataModelAdapter.snakeCase2Camelize(response.data);

      if (!_isSuccess(response)) {
        return left(
          BusinessError.error(
            code: json['retCode'],
            message: json['retMsg'],
            response: response,
          ),
        );
      }
      return right(DataModelAdapter.toModel<T>(json, meta.translator));
    } on DioError catch (error) {
      final httpError = HttpError.fromDioError(error);
      print('== httpError ===>>>> $httpError');
      return left(httpError);
    }
  }

  Future<dynamic> _handleError<T extends DataModel>(Exception error,
      {@required String url, @required ParameterWrapper wrapper}) {
    final completer = Completer();
    _failureHandler(
      url: url,
      wrapper: wrapper,
      positiveAction: () {
        completer.complete(request<T>(url, wrapper: wrapper));
      },
      negativeAction: () {
        completer.completeError(error);
      },
    );
    return completer.future;
  }

  void _failureHandler(
      {@required String url,
      @required ParameterWrapper wrapper,
      @required Action positiveAction,
      @required Action negativeAction}) {
    final meta = wrapper.meta;
    if (meta.resend != null && meta.resend) {
      positiveAction();
    } else {
      negativeAction();
    }
  }

  bool _isSuccess(Response response) {
    if (response.statusCode < 200 || response.statusCode > 299) {
      return false;
    }
    return true;
  }
}
