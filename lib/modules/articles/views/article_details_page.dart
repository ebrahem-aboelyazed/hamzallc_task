import 'package:flutter/material.dart';
import 'package:hamzallc_task/common/common.dart';
import 'package:hamzallc_task/l10n/l10n.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';
import 'package:hamzallc_task/utils/utils.dart';

class ArticleDetailsPage extends StatelessWidget {
  const ArticleDetailsPage({
    required this.article,
    super.key,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              expandedHeight: context.heightPercentage(0.3),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: CachedImage(
                  getImageUrl(),
                  radius: 0,
                  height: context.heightPercentage(0.3),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Text(
                    '${context.l10n.published}: ${article.publishedDate}',
                  ),
                  const SizedBox(height: 8),
                  Text(
                    article.title,
                    style: Styles.boldText.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    article.abstract,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getImageUrl() {
    final media = article.media;
    if (media.isNotEmpty) {
      final firstItem = media.first.mediaMetadata;
      if (firstItem.isNotEmpty) {
        return firstItem.first.url;
      }
    }
    return 'https://placehold.co/600x400.png';
  }
}
