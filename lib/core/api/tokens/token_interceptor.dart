import 'package:dio/dio.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/modules/home/home.dart';

class TokenInterceptor extends QueuedInterceptorsWrapper {
  TokenInterceptor(this._tokenRepository, this._tokenStorage);

  final TokenRepository _tokenRepository;
  final TokenStorage _tokenStorage;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.headers['Authorization'] == null) {
      return handler.next(options);
    }
    final token = _tokenStorage.getToken('access_token');
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      final refreshToken = _tokenStorage.getToken('refresh_token');
      if (refreshToken == null || refreshToken.isEmpty) {
        await _tokenStorage.clearTokens();
        eventBus.fire(const UserUnauthorized());
        return handler.next(err);
      }
      try {
        final newToken = await _tokenRepository.refreshToken(refreshToken);
        final accessToken = newToken.accessToken;
        final requestOptions = err.response!.requestOptions;
        requestOptions.headers['Authorization'] = 'Bearer $accessToken';
        final options = Options(
          method: requestOptions.method,
          headers: requestOptions.headers,
        );
        final dioRefresh = Dio(
          BaseOptions(
            baseUrl: requestOptions.baseUrl,
            headers: {'accept': 'application/json'},
          ),
        );
        final response = await dioRefresh.request<dynamic>(
          requestOptions.path,
          data: requestOptions.data,
          queryParameters: requestOptions.queryParameters,
          options: options,
        );
        return handler.resolve(response);
      } on DioException {
        if (err.response?.statusCode == 401) {
          await _tokenStorage.clearTokens();
          eventBus.fire(const UserUnauthorized());
        }
      }
    }
    handler.next(err);
  }
}
