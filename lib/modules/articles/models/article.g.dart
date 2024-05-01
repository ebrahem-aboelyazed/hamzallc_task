// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      uri: json['uri'] as String? ?? '',
      url: json['url'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      assetId: (json['assetId'] as num?)?.toInt() ?? 0,
      source: json['source'] as String? ?? '',
      publishedDate: json['publishedDate'] as String? ?? '',
      updated: json['updated'] as String? ?? '',
      section: json['section'] as String? ?? '',
      subSection: json['subSection'] as String? ?? '',
      nytdsection: json['nytdsection'] as String? ?? '',
      adxKeywords: json['adxKeywords'] as String? ?? '',
      byline: json['byline'] as String? ?? '',
      type: json['type'] as String? ?? '',
      title: json['title'] as String? ?? '',
      abstract: json['abstract'] as String? ?? '',
      desFacet: (json['desFacet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      orgFacet: (json['orgFacet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      perFacet: (json['perFacet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      geoFacet: (json['geoFacet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      media: (json['media'] as List<dynamic>?)
              ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Media>[],
      etaId: (json['etaId'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'url': instance.url,
      'id': instance.id,
      'assetId': instance.assetId,
      'source': instance.source,
      'publishedDate': instance.publishedDate,
      'updated': instance.updated,
      'section': instance.section,
      'subSection': instance.subSection,
      'nytdsection': instance.nytdsection,
      'adxKeywords': instance.adxKeywords,
      'byline': instance.byline,
      'type': instance.type,
      'title': instance.title,
      'abstract': instance.abstract,
      'desFacet': instance.desFacet,
      'orgFacet': instance.orgFacet,
      'perFacet': instance.perFacet,
      'geoFacet': instance.geoFacet,
      'media': instance.media.map((e) => e.toJson()).toList(),
      'etaId': instance.etaId,
    };
