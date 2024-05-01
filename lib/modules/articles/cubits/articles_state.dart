part of 'articles_cubit.dart';

@freezed
class ArticlesState with _$ArticlesState {
  const factory ArticlesState.initial() = ArticlesInitial;

  const factory ArticlesState.loading() = ArticlesLoading;

  const factory ArticlesState.loaded(List<Article> articles) = ArticlesLoaded;

  const factory ArticlesState.searching(String? search) = ArticlesSearching;

  const factory ArticlesState.failure(Failure failure) = ArticlesFailure;

  const factory ArticlesState.fetchedBackground(List<Article> articles) =
      ArticlesFetchedBackground;
}
