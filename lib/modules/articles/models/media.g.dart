// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaImpl _$$MediaImplFromJson(Map<String, dynamic> json) => _$MediaImpl(
      type: json['type'] as String? ?? '',
      subtype: json['subtype'] as String? ?? '',
      caption: json['caption'] as String? ?? '',
      copyright: json['copyright'] as String? ?? '',
      approvedForSyndication:
          (json['approvedForSyndication'] as num?)?.toInt() ?? 0,
      mediaMetadata: (json['media-metadata'] as List<dynamic>?)
              ?.map((e) => MediaMetadata.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MediaImplToJson(_$MediaImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'subtype': instance.subtype,
      'caption': instance.caption,
      'copyright': instance.copyright,
      'approvedForSyndication': instance.approvedForSyndication,
      'media-metadata': instance.mediaMetadata.map((e) => e.toJson()).toList(),
    };
