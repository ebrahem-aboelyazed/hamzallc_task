import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';
import 'package:mocktail/mocktail.dart';

class MockArticlesService extends Mock implements ArticlesService {}

void main() {
  late ArticlesCubit articlesCubit;
  late ArticlesService articlesService;

  setUp(() {
    articlesService = MockArticlesService();
    articlesCubit = ArticlesCubit(articlesService: articlesService);
  });

  tearDown(() {
    articlesCubit.close();
  });

  group('ArticlesCubit', () {
    blocTest<ArticlesCubit, ArticlesState>(
      'emits [loading, loaded] when getMostViewedArticles succeeds',
      setUp: () {
        when(() {
          return articlesService.getMostViewedArticles();
        }).thenAnswer((_) async => const Right([]));
      },
      build: () => articlesCubit,
      act: (cubit) => cubit.getMostViewedArticles(),
      expect: () => [
        const ArticlesState.loading(),
        const ArticlesState.loaded([]),
      ],
    );

    blocTest<ArticlesCubit, ArticlesState>(
      'emits [loading, failure] when getMostViewedArticles fails',
      setUp: () {
        when(() {
          return articlesService.getMostViewedArticles();
        }).thenAnswer((_) async => const Left(Failure()));
      },
      build: () => articlesCubit,
      act: (cubit) => cubit.getMostViewedArticles(),
      expect: () => [const ArticlesState.loading(), isA<ArticlesFailure>()],
    );

    blocTest<ArticlesCubit, ArticlesState>(
      'emits [loading, loaded] when refreshArticles is called',
      build: () => articlesCubit,
      act: (cubit) => cubit.refreshArticles([]),
      expect: () => [
        const ArticlesState.loading(),
        const ArticlesState.loaded([]),
      ],
    );
  });
}
