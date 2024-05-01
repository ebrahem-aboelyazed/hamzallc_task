// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_meta_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaMetadata _$MediaMetadataFromJson(Map<String, dynamic> json) {
  return _MediaMetadata.fromJson(json);
}

/// @nodoc
mixin _$MediaMetadata {
  String get url => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaMetadataCopyWith<MediaMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaMetadataCopyWith<$Res> {
  factory $MediaMetadataCopyWith(
          MediaMetadata value, $Res Function(MediaMetadata) then) =
      _$MediaMetadataCopyWithImpl<$Res, MediaMetadata>;
  @useResult
  $Res call({String url, String format, int height, int width});
}

/// @nodoc
class _$MediaMetadataCopyWithImpl<$Res, $Val extends MediaMetadata>
    implements $MediaMetadataCopyWith<$Res> {
  _$MediaMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? format = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaMetadataImplCopyWith<$Res>
    implements $MediaMetadataCopyWith<$Res> {
  factory _$$MediaMetadataImplCopyWith(
          _$MediaMetadataImpl value, $Res Function(_$MediaMetadataImpl) then) =
      __$$MediaMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String format, int height, int width});
}

/// @nodoc
class __$$MediaMetadataImplCopyWithImpl<$Res>
    extends _$MediaMetadataCopyWithImpl<$Res, _$MediaMetadataImpl>
    implements _$$MediaMetadataImplCopyWith<$Res> {
  __$$MediaMetadataImplCopyWithImpl(
      _$MediaMetadataImpl _value, $Res Function(_$MediaMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? format = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_$MediaMetadataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MediaMetadataImpl
    with DiagnosticableTreeMixin
    implements _MediaMetadata {
  const _$MediaMetadataImpl(
      {this.url = '', this.format = '', this.height = 0, this.width = 0});

  factory _$MediaMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaMetadataImplFromJson(json);

  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String format;
  @override
  @JsonKey()
  final int height;
  @override
  @JsonKey()
  final int width;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MediaMetadata(url: $url, format: $format, height: $height, width: $width)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MediaMetadata'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('format', format))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('width', width));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaMetadataImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, format, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaMetadataImplCopyWith<_$MediaMetadataImpl> get copyWith =>
      __$$MediaMetadataImplCopyWithImpl<_$MediaMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaMetadataImplToJson(
      this,
    );
  }
}

abstract class _MediaMetadata implements MediaMetadata {
  const factory _MediaMetadata(
      {final String url,
      final String format,
      final int height,
      final int width}) = _$MediaMetadataImpl;

  factory _MediaMetadata.fromJson(Map<String, dynamic> json) =
      _$MediaMetadataImpl.fromJson;

  @override
  String get url;
  @override
  String get format;
  @override
  int get height;
  @override
  int get width;
  @override
  @JsonKey(ignore: true)
  _$$MediaMetadataImplCopyWith<_$MediaMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
