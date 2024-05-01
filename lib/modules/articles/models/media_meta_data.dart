import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_meta_data.freezed.dart';
part 'media_meta_data.g.dart';

@freezed
class MediaMetadata with _$MediaMetadata {
  @JsonSerializable(explicitToJson: true)
  const factory MediaMetadata({
    @Default('') String url,
    @Default('') String format,
    @Default(0) int height,
    @Default(0) int width,
  }) = _MediaMetadata;

  factory MediaMetadata.fromJson(Map<String, dynamic> json) =>
      _$MediaMetadataFromJson(json);
}
