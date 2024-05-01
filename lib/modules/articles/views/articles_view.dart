import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzallc_task/common/common.dart';
import 'package:hamzallc_task/l10n/l10n.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({super.key});

  @override
  State<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends State<ArticlesView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.articles,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: BlocBuilder<ArticlesCubit, ArticlesState>(
          buildWhen: (previous, current) {
            return current is ArticlesLoading ||
                current is ArticlesLoaded ||
                current is ArticlesFailure;
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              failure: (failure) {
                return ErrorView(message: failure.message);
              },
              orElse: () {
                final articles = (state as ArticlesLoaded).articles;
                if (articles.isEmpty) {
                  return const Center(child: EmptyView());
                }
                return ArticlesListView(articles: articles);
              },
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
