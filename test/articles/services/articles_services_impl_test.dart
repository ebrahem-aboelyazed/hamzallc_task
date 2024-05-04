import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';
import 'package:mocktail/mocktail.dart';

class MockBaseApi extends Mock implements BaseApi {}

void main() {
  late ArticlesServiceImpl articlesService;
  late BaseApi baseApi;

  setUp(() {
    baseApi = MockBaseApi();
    articlesService = ArticlesServiceImpl(baseApi);
  });

  group('ArticlesServiceImpl', () {
    test('getMostViewedArticles should return Right List<Article> on success',
        () async {
      // Arrange
      final mockResponse = Response<dynamic>(
        data: {
          'results': [
            {'id': 1, 'title': 'Article 1'},
            {'id': 2, 'title': 'Article 2'},
          ],
        },
        statusCode: 200,
        requestOptions: RequestOptions(),
      );
      when(() => baseApi.getData(EndPoints.mostViewed))
          .thenAnswer((_) async => Right(mockResponse));

      // Act
      final result = await articlesService.getMostViewedArticles();

      // Assert
      expect(result.isRight(), true);
      expect(result.getOrElse(() => throw Exception()), isA<List<Article>>());
    });

    test('getMostViewedArticles should return Left Failure on error', () async {
      // Arrange
      when(() => baseApi.getData(EndPoints.mostViewed)).thenThrow(Exception());

      // Act
      final result = await articlesService.getMostViewedArticles();

      // Assert
      expect(result.isLeft(), true);
    });
  });
}
