import 'package:dio/dio.dart';

class RefreshTokenInterceptor implements Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    // TODO: implement onResponse
  }
}
