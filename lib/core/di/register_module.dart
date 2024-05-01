import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/utils/utils.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  Dio get dio {
    return Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 10),
        contentType: 'application/json',
        queryParameters: {
          'api-key': dotenv.env[AppConstants.apiKeyName],
        },
      ),
    );
  }
}
