// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArticlesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Article> articles) fetchedBackground,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<Article> articles)? fetchedBackground,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Article> articles)? fetchedBackground,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArticlesInitial value) initial,
    required TResult Function(ArticlesLoading value) loading,
    required TResult Function(ArticlesLoaded value) loaded,
    required TResult Function(ArticlesSearching value) searching,
    required TResult Function(ArticlesFailure value) failure,
    required TResult Function(ArticlesFetchedBackground value)
        fetchedBackground,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArticlesInitial value)? initial,
    TResult? Function(ArticlesLoading value)? loading,
    TResult? Function(ArticlesLoaded value)? loaded,
    TResult? Function(ArticlesSearching value)? searching,
    TResult? Function(ArticlesFailure value)? failure,
    TResult? Function(ArticlesFetchedBackground value)? fetchedBackground,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArticlesInitial value)? initial,
    TResult Function(ArticlesLoading value)? loading,
    TResult Function(ArticlesLoaded value)? loaded,
    TResult Function(ArticlesSearching value)? searching,
    TResult Function(ArticlesFailure value)? failure,
    TResult Function(ArticlesFetchedBackground value)? fetchedBackground,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesStateCopyWith<$Res> {
  factory $ArticlesStateCopyWith(
          ArticlesState value, $Res Function(ArticlesState) then) =
      _$ArticlesStateCopyWithImpl<$Res, ArticlesState>;
}

/// @nodoc
class _$ArticlesStateCopyWithImpl<$Res, $Val extends ArticlesState>
    implements $ArticlesStateCopyWith<$Res> {
  _$ArticlesStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ArticlesInitialImplCopyWith<$Res> {
  factory _$$ArticlesInitialImplCopyWith(_$ArticlesInitialImpl value,
          $Res Function(_$ArticlesInitialImpl) then) =
      __$$ArticlesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArticlesInitialImplCopyWithImpl<$Res>
    extends _$ArticlesStateCopyWithImpl<$Res, _$ArticlesInitialImpl>
    implements _$$ArticlesInitialImplCopyWith<$Res> {
  __$$ArticlesInitialImplCopyWithImpl(
      _$ArticlesInitialImpl _value, $Res Function(_$ArticlesInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArticlesInitialImpl implements ArticlesInitial {
  const _$ArticlesInitialImpl();

  @override
  String toString() {
    return 'ArticlesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ArticlesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Article> articles) fetchedBackground,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<Article> articles)? fetchedBackground,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Article> articles)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArticlesInitial value) initial,
    required TResult Function(ArticlesLoading value) loading,
    required TResult Function(ArticlesLoaded value) loaded,
    required TResult Function(ArticlesSearching value) searching,
    required TResult Function(ArticlesFailure value) failure,
    required TResult Function(ArticlesFetchedBackground value)
        fetchedBackground,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArticlesInitial value)? initial,
    TResult? Function(ArticlesLoading value)? loading,
    TResult? Function(ArticlesLoaded value)? loaded,
    TResult? Function(ArticlesSearching value)? searching,
    TResult? Function(ArticlesFailure value)? failure,
    TResult? Function(ArticlesFetchedBackground value)? fetchedBackground,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArticlesInitial value)? initial,
    TResult Function(ArticlesLoading value)? loading,
    TResult Function(ArticlesLoaded value)? loaded,
    TResult Function(ArticlesSearching value)? searching,
    TResult Function(ArticlesFailure value)? failure,
    TResult Function(ArticlesFetchedBackground value)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ArticlesInitial implements ArticlesState {
  const factory ArticlesInitial() = _$ArticlesInitialImpl;
}

/// @nodoc
abstract class _$$ArticlesLoadingImplCopyWith<$Res> {
  factory _$$ArticlesLoadingImplCopyWith(_$ArticlesLoadingImpl value,
          $Res Function(_$ArticlesLoadingImpl) then) =
      __$$ArticlesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArticlesLoadingImplCopyWithImpl<$Res>
    extends _$ArticlesStateCopyWithImpl<$Res, _$ArticlesLoadingImpl>
    implements _$$ArticlesLoadingImplCopyWith<$Res> {
  __$$ArticlesLoadingImplCopyWithImpl(
      _$ArticlesLoadingImpl _value, $Res Function(_$ArticlesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArticlesLoadingImpl implements ArticlesLoading {
  const _$ArticlesLoadingImpl();

  @override
  String toString() {
    return 'ArticlesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ArticlesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Article> articles) fetchedBackground,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<Article> articles)? fetchedBackground,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Article> articles)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArticlesInitial value) initial,
    required TResult Function(ArticlesLoading value) loading,
    required TResult Function(ArticlesLoaded value) loaded,
    required TResult Function(ArticlesSearching value) searching,
    required TResult Function(ArticlesFailure value) failure,
    required TResult Function(ArticlesFetchedBackground value)
        fetchedBackground,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArticlesInitial value)? initial,
    TResult? Function(ArticlesLoading value)? loading,
    TResult? Function(ArticlesLoaded value)? loaded,
    TResult? Function(ArticlesSearching value)? searching,
    TResult? Function(ArticlesFailure value)? failure,
    TResult? Function(ArticlesFetchedBackground value)? fetchedBackground,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArticlesInitial value)? initial,
    TResult Function(ArticlesLoading value)? loading,
    TResult Function(ArticlesLoaded value)? loaded,
    TResult Function(ArticlesSearching value)? searching,
    TResult Function(ArticlesFailure value)? failure,
    TResult Function(ArticlesFetchedBackground value)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ArticlesLoading implements ArticlesState {
  const factory ArticlesLoading() = _$ArticlesLoadingImpl;
}

/// @nodoc
abstract class _$$ArticlesLoadedImplCopyWith<$Res> {
  factory _$$ArticlesLoadedImplCopyWith(_$ArticlesLoadedImpl value,
          $Res Function(_$ArticlesLoadedImpl) then) =
      __$$ArticlesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$ArticlesLoadedImplCopyWithImpl<$Res>
    extends _$ArticlesStateCopyWithImpl<$Res, _$ArticlesLoadedImpl>
    implements _$$ArticlesLoadedImplCopyWith<$Res> {
  __$$ArticlesLoadedImplCopyWithImpl(
      _$ArticlesLoadedImpl _value, $Res Function(_$ArticlesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$ArticlesLoadedImpl(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$ArticlesLoadedImpl implements ArticlesLoaded {
  const _$ArticlesLoadedImpl(final List<Article> articles)
      : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'ArticlesState.loaded(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticlesLoadedImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticlesLoadedImplCopyWith<_$ArticlesLoadedImpl> get copyWith =>
      __$$ArticlesLoadedImplCopyWithImpl<_$ArticlesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Article> articles) fetchedBackground,
  }) {
    return loaded(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<Article> articles)? fetchedBackground,
  }) {
    return loaded?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Article> articles)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArticlesInitial value) initial,
    required TResult Function(ArticlesLoading value) loading,
    required TResult Function(ArticlesLoaded value) loaded,
    required TResult Function(ArticlesSearching value) searching,
    required TResult Function(ArticlesFailure value) failure,
    required TResult Function(ArticlesFetchedBackground value)
        fetchedBackground,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArticlesInitial value)? initial,
    TResult? Function(ArticlesLoading value)? loading,
    TResult? Function(ArticlesLoaded value)? loaded,
    TResult? Function(ArticlesSearching value)? searching,
    TResult? Function(ArticlesFailure value)? failure,
    TResult? Function(ArticlesFetchedBackground value)? fetchedBackground,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArticlesInitial value)? initial,
    TResult Function(ArticlesLoading value)? loading,
    TResult Function(ArticlesLoaded value)? loaded,
    TResult Function(ArticlesSearching value)? searching,
    TResult Function(ArticlesFailure value)? failure,
    TResult Function(ArticlesFetchedBackground value)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ArticlesLoaded implements ArticlesState {
  const factory ArticlesLoaded(final List<Article> articles) =
      _$ArticlesLoadedImpl;

  List<Article> get articles;
  @JsonKey(ignore: true)
  _$$ArticlesLoadedImplCopyWith<_$ArticlesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArticlesSearchingImplCopyWith<$Res> {
  factory _$$ArticlesSearchingImplCopyWith(_$ArticlesSearchingImpl value,
          $Res Function(_$ArticlesSearchingImpl) then) =
      __$$ArticlesSearchingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? search});
}

/// @nodoc
class __$$ArticlesSearchingImplCopyWithImpl<$Res>
    extends _$ArticlesStateCopyWithImpl<$Res, _$ArticlesSearchingImpl>
    implements _$$ArticlesSearchingImplCopyWith<$Res> {
  __$$ArticlesSearchingImplCopyWithImpl(_$ArticlesSearchingImpl _value,
      $Res Function(_$ArticlesSearchingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$ArticlesSearchingImpl(
      freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ArticlesSearchingImpl implements ArticlesSearching {
  const _$ArticlesSearchingImpl(this.search);

  @override
  final String? search;

  @override
  String toString() {
    return 'ArticlesState.searching(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticlesSearchingImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticlesSearchingImplCopyWith<_$ArticlesSearchingImpl> get copyWith =>
      __$$ArticlesSearchingImplCopyWithImpl<_$ArticlesSearchingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Article> articles) fetchedBackground,
  }) {
    return searching(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<Article> articles)? fetchedBackground,
  }) {
    return searching?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Article> articles)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArticlesInitial value) initial,
    required TResult Function(ArticlesLoading value) loading,
    required TResult Function(ArticlesLoaded value) loaded,
    required TResult Function(ArticlesSearching value) searching,
    required TResult Function(ArticlesFailure value) failure,
    required TResult Function(ArticlesFetchedBackground value)
        fetchedBackground,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArticlesInitial value)? initial,
    TResult? Function(ArticlesLoading value)? loading,
    TResult? Function(ArticlesLoaded value)? loaded,
    TResult? Function(ArticlesSearching value)? searching,
    TResult? Function(ArticlesFailure value)? failure,
    TResult? Function(ArticlesFetchedBackground value)? fetchedBackground,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArticlesInitial value)? initial,
    TResult Function(ArticlesLoading value)? loading,
    TResult Function(ArticlesLoaded value)? loaded,
    TResult Function(ArticlesSearching value)? searching,
    TResult Function(ArticlesFailure value)? failure,
    TResult Function(ArticlesFetchedBackground value)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class ArticlesSearching implements ArticlesState {
  const factory ArticlesSearching(final String? search) =
      _$ArticlesSearchingImpl;

  String? get search;
  @JsonKey(ignore: true)
  _$$ArticlesSearchingImplCopyWith<_$ArticlesSearchingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArticlesFailureImplCopyWith<$Res> {
  factory _$$ArticlesFailureImplCopyWith(_$ArticlesFailureImpl value,
          $Res Function(_$ArticlesFailureImpl) then) =
      __$$ArticlesFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ArticlesFailureImplCopyWithImpl<$Res>
    extends _$ArticlesStateCopyWithImpl<$Res, _$ArticlesFailureImpl>
    implements _$$ArticlesFailureImplCopyWith<$Res> {
  __$$ArticlesFailureImplCopyWithImpl(
      _$ArticlesFailureImpl _value, $Res Function(_$ArticlesFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ArticlesFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ArticlesFailureImpl implements ArticlesFailure {
  const _$ArticlesFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ArticlesState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticlesFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticlesFailureImplCopyWith<_$ArticlesFailureImpl> get copyWith =>
      __$$ArticlesFailureImplCopyWithImpl<_$ArticlesFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Article> articles) fetchedBackground,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<Article> articles)? fetchedBackground,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Article> articles)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArticlesInitial value) initial,
    required TResult Function(ArticlesLoading value) loading,
    required TResult Function(ArticlesLoaded value) loaded,
    required TResult Function(ArticlesSearching value) searching,
    required TResult Function(ArticlesFailure value) failure,
    required TResult Function(ArticlesFetchedBackground value)
        fetchedBackground,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArticlesInitial value)? initial,
    TResult? Function(ArticlesLoading value)? loading,
    TResult? Function(ArticlesLoaded value)? loaded,
    TResult? Function(ArticlesSearching value)? searching,
    TResult? Function(ArticlesFailure value)? failure,
    TResult? Function(ArticlesFetchedBackground value)? fetchedBackground,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArticlesInitial value)? initial,
    TResult Function(ArticlesLoading value)? loading,
    TResult Function(ArticlesLoaded value)? loaded,
    TResult Function(ArticlesSearching value)? searching,
    TResult Function(ArticlesFailure value)? failure,
    TResult Function(ArticlesFetchedBackground value)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ArticlesFailure implements ArticlesState {
  const factory ArticlesFailure(final Failure failure) = _$ArticlesFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ArticlesFailureImplCopyWith<_$ArticlesFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArticlesFetchedBackgroundImplCopyWith<$Res> {
  factory _$$ArticlesFetchedBackgroundImplCopyWith(
          _$ArticlesFetchedBackgroundImpl value,
          $Res Function(_$ArticlesFetchedBackgroundImpl) then) =
      __$$ArticlesFetchedBackgroundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$ArticlesFetchedBackgroundImplCopyWithImpl<$Res>
    extends _$ArticlesStateCopyWithImpl<$Res, _$ArticlesFetchedBackgroundImpl>
    implements _$$ArticlesFetchedBackgroundImplCopyWith<$Res> {
  __$$ArticlesFetchedBackgroundImplCopyWithImpl(
      _$ArticlesFetchedBackgroundImpl _value,
      $Res Function(_$ArticlesFetchedBackgroundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$ArticlesFetchedBackgroundImpl(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$ArticlesFetchedBackgroundImpl implements ArticlesFetchedBackground {
  const _$ArticlesFetchedBackgroundImpl(final List<Article> articles)
      : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'ArticlesState.fetchedBackground(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticlesFetchedBackgroundImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticlesFetchedBackgroundImplCopyWith<_$ArticlesFetchedBackgroundImpl>
      get copyWith => __$$ArticlesFetchedBackgroundImplCopyWithImpl<
          _$ArticlesFetchedBackgroundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Article> articles) fetchedBackground,
  }) {
    return fetchedBackground(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<Article> articles)? fetchedBackground,
  }) {
    return fetchedBackground?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Article> articles)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (fetchedBackground != null) {
      return fetchedBackground(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArticlesInitial value) initial,
    required TResult Function(ArticlesLoading value) loading,
    required TResult Function(ArticlesLoaded value) loaded,
    required TResult Function(ArticlesSearching value) searching,
    required TResult Function(ArticlesFailure value) failure,
    required TResult Function(ArticlesFetchedBackground value)
        fetchedBackground,
  }) {
    return fetchedBackground(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArticlesInitial value)? initial,
    TResult? Function(ArticlesLoading value)? loading,
    TResult? Function(ArticlesLoaded value)? loaded,
    TResult? Function(ArticlesSearching value)? searching,
    TResult? Function(ArticlesFailure value)? failure,
    TResult? Function(ArticlesFetchedBackground value)? fetchedBackground,
  }) {
    return fetchedBackground?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArticlesInitial value)? initial,
    TResult Function(ArticlesLoading value)? loading,
    TResult Function(ArticlesLoaded value)? loaded,
    TResult Function(ArticlesSearching value)? searching,
    TResult Function(ArticlesFailure value)? failure,
    TResult Function(ArticlesFetchedBackground value)? fetchedBackground,
    required TResult orElse(),
  }) {
    if (fetchedBackground != null) {
      return fetchedBackground(this);
    }
    return orElse();
  }
}

abstract class ArticlesFetchedBackground implements ArticlesState {
  const factory ArticlesFetchedBackground(final List<Article> articles) =
      _$ArticlesFetchedBackgroundImpl;

  List<Article> get articles;
  @JsonKey(ignore: true)
  _$$ArticlesFetchedBackgroundImplCopyWith<_$ArticlesFetchedBackgroundImpl>
      get copyWith => throw _privateConstructorUsedError;
}
