import 'package:dio/dio.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/modules/home/home.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class TokenRepository {
  TokenRepository(this.tokenStorage, this.dio);

  final TokenStorage tokenStorage;
  final Dio dio;

  Future<Token> refreshToken(String refresh) async {
    try {
      final request = await dio.post<dynamic>(
        'auth/token/refresh',
        data: {'token': refresh},
      );
      if (request.statusCode == RequestStatus.success) {
        final data = request.data as Map<String, dynamic>;
        return Token(
          accessToken: data['access_token'] as String,
          refreshToken: data['refresh_token'] as String,
        );
      } else {
        throw DioException(requestOptions: request.requestOptions);
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
