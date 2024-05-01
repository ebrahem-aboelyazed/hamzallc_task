import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';

part 'articles_cubit.freezed.dart';
part 'articles_state.dart';

class ArticlesCubit extends Cubit<ArticlesState> {
  ArticlesCubit({
    required this.articlesService,
  }) : super(const ArticlesState.initial());

  final ArticlesService articlesService;

  Future<void> getMostViewedArticles() async {
    emit(const ArticlesState.loading());
    final response = await articlesService.getMostViewedArticles();
    response.fold(
      (failure) => emit(ArticlesState.failure(failure)),
      (movies) => emit(ArticlesState.loaded(movies)),
    );
  }
}
