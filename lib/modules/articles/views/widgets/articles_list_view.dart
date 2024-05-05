import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';

class ArticlesListView extends StatelessWidget {
  const ArticlesListView({required this.articles, super.key});

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ArticlesCubit>();
    return RefreshIndicator(
      onRefresh: cubit.getMostViewedArticles,
      child: FadeInUp(
        child: ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return ArticleCard(article: articles[index]);
          },
        ),
      ),
    );
  }
}
