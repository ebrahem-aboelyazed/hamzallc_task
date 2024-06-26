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
              expandedHeight: context.heightPercentage(0.4),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: CachedImage(
                  getImageUrl(),
                  radius: 0,
                  height: context.heightPercentage(0.4),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
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
            ),
          ],
        ),
      ),
    );
  }

  String getImageUrl() {
    final media = article.media;
    if (media.isNotEmpty) {
      final metaData = media.first.mediaMetadata;
      if (metaData.isNotEmpty) {
        return metaData.last.url;
      }
    }
    return 'https://placehold.co/600x400.png';
  }
}
