import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
class Media with _$Media {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Media({
    @Default('') String type,
    @Default('') String subtype,
    @Default('') String caption,
    @Default('') String copyright,
    @Default(0) int approvedForSyndication,
    @Default([])
    @JsonKey(name: 'media-metadata')
    List<MediaMetadata> mediaMetadata,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}
