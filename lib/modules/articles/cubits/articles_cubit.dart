import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';

part 'articles_cubit.freezed.dart';
part 'articles_state.dart';

/// A Cubit for managing articles state.
///
/// This Cubit provides methods to interact with articles,
/// such as fetching most viewed articles
/// and handling background events related to articles.
class ArticlesCubit extends Cubit<ArticlesState> {
  /// Initializes the ArticlesCubit with the specified [articlesService].
  ///
  /// [articlesService]: The service instance used to fetch articles.
  ArticlesCubit({
    required this.articlesService,
  }) : super(const ArticlesState.initial()) {
    backgroundSubscription =
        eventBus.on<ArticlesFetchedBackground>().listen((event) {
      refreshArticles(event.articles);
    });
  }

  late final StreamSubscription<ArticlesFetchedBackground>
      backgroundSubscription;

  final ArticlesService articlesService;

  /// Fetches the most viewed articles.
  ///
  /// Emits [ArticlesState.loading] state before fetching
  /// and either emits [ArticlesState.failure]
  /// on failure or [ArticlesState.loaded] with the fetched articles on success.
  Future<void> getMostViewedArticles() async {
    emit(const ArticlesState.loading());
    final response = await articlesService.getMostViewedArticles();
    response.fold(
      (failure) => emit(ArticlesState.failure(failure)),
      (articles) => emit(ArticlesState.loaded(articles)),
    );
  }

  /// Refreshes the articles with the provided [articles].
  ///
  /// Emits [ArticlesState.loading] state before refreshing
  /// and [ArticlesState.loaded] with
  /// the refreshed articles.
  void refreshArticles(List<Article> articles) {
    emit(const ArticlesState.loading());
    emit(ArticlesState.loaded(articles));
  }

  @override
  Future<void> close() {
    backgroundSubscription.cancel();
    return super.close();
  }
}
