// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_meta_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaMetadataImpl _$$MediaMetadataImplFromJson(Map<String, dynamic> json) =>
    _$MediaMetadataImpl(
      url: json['url'] as String? ?? '',
      format: json['format'] as String? ?? '',
      height: (json['height'] as num?)?.toInt() ?? 0,
      width: (json['width'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MediaMetadataImplToJson(_$MediaMetadataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'format': instance.format,
      'height': instance.height,
      'width': instance.width,
    };
