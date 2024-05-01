import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  @JsonSerializable(explicitToJson: true)
  const factory Article({
    @Default('') String uri,
    @Default('') String url,
    @Default(0) int id,
    @Default(0) int assetId,
    @Default('') String source,
    @Default('') String publishedDate,
    @Default('') String updated,
    @Default('') String section,
    @Default('') String subSection,
    @Default('') String nytdsection,
    @Default('') String adxKeywords,
    @Default('') String byline,
    @Default('') String type,
    @Default('') String title,
    @Default('') String abstract,
    @Default(<String>[]) List<String> desFacet,
    @Default(<String>[]) List<String> orgFacet,
    @Default(<String>[]) List<String> perFacet,
    @Default(<String>[]) List<String> geoFacet,
    @Default(<Media>[]) List<Media> media,
    @Default(0) int etaId,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
