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
      assetId: (json['asset_id'] as num?)?.toInt() ?? 0,
      source: json['source'] as String? ?? '',
      publishedDate: json['published_date'] as String? ?? '',
      updated: json['updated'] as String? ?? '',
      section: json['section'] as String? ?? '',
      subSection: json['sub_section'] as String? ?? '',
      nytdsection: json['nytdsection'] as String? ?? '',
      adxKeywords: json['adx_keywords'] as String? ?? '',
      byline: json['byline'] as String? ?? '',
      type: json['type'] as String? ?? '',
      title: json['title'] as String? ?? '',
      abstract: json['abstract'] as String? ?? '',
      desFacet: (json['des_facet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      orgFacet: (json['org_facet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      perFacet: (json['per_facet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      geoFacet: (json['geo_facet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      media: (json['media'] as List<dynamic>?)
              ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Media>[],
      etaId: (json['eta_id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'url': instance.url,
      'id': instance.id,
      'asset_id': instance.assetId,
      'source': instance.source,
      'published_date': instance.publishedDate,
      'updated': instance.updated,
      'section': instance.section,
      'sub_section': instance.subSection,
      'nytdsection': instance.nytdsection,
      'adx_keywords': instance.adxKeywords,
      'byline': instance.byline,
      'type': instance.type,
      'title': instance.title,
      'abstract': instance.abstract,
      'des_facet': instance.desFacet,
      'org_facet': instance.orgFacet,
      'per_facet': instance.perFacet,
      'geo_facet': instance.geoFacet,
      'media': instance.media.map((e) => e.toJson()).toList(),
      'eta_id': instance.etaId,
    };
