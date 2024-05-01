import 'package:flutter/material.dart';
import 'package:hamzallc_task/common/common.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({required this.article, super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: const BoxDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              width: 120,
              child: AspectRatio(
                aspectRatio: 1.8,
                child: CachedImage(
                  getImageUrl(),
                  radius: 8,
                  height: 120,
                  width: 120,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    article.abstract,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
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
