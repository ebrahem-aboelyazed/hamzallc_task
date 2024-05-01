import 'dart:developer';

import 'package:dio/dio.dart';

class ApiCacheInterceptor implements Interceptor {
  @override
  void onError(DioException error, ErrorInterceptorHandler handler) {
    handler.next(error);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('Calling ${options.uri}');
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    handler.next(response);
  }
}
