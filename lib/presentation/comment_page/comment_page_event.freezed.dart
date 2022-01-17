// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_page_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentPageEventTearOff {
  const _$CommentPageEventTearOff();

  StoreContent storeContent(String content) {
    return StoreContent(
      content,
    );
  }

  RegisterComment registerComment() {
    return const RegisterComment();
  }
}

/// @nodoc
const $CommentPageEvent = _$CommentPageEventTearOff();

/// @nodoc
mixin _$CommentPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) storeContent,
    required TResult Function() registerComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function()? registerComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function()? registerComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreContent value) storeContent,
    required TResult Function(RegisterComment value) registerComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(RegisterComment value)? registerComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(RegisterComment value)? registerComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPageEventCopyWith<$Res> {
  factory $CommentPageEventCopyWith(
          CommentPageEvent value, $Res Function(CommentPageEvent) then) =
      _$CommentPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentPageEventCopyWithImpl<$Res>
    implements $CommentPageEventCopyWith<$Res> {
  _$CommentPageEventCopyWithImpl(this._value, this._then);

  final CommentPageEvent _value;
  // ignore: unused_field
  final $Res Function(CommentPageEvent) _then;
}

/// @nodoc
abstract class $StoreContentCopyWith<$Res> {
  factory $StoreContentCopyWith(
          StoreContent value, $Res Function(StoreContent) then) =
      _$StoreContentCopyWithImpl<$Res>;
  $Res call({String content});
}

/// @nodoc
class _$StoreContentCopyWithImpl<$Res>
    extends _$CommentPageEventCopyWithImpl<$Res>
    implements $StoreContentCopyWith<$Res> {
  _$StoreContentCopyWithImpl(
      StoreContent _value, $Res Function(StoreContent) _then)
      : super(_value, (v) => _then(v as StoreContent));

  @override
  StoreContent get _value => super._value as StoreContent;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(StoreContent(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreContent implements StoreContent {
  const _$StoreContent(this.content);

  @override
  final String content;

  @override
  String toString() {
    return 'CommentPageEvent.storeContent(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreContent &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $StoreContentCopyWith<StoreContent> get copyWith =>
      _$StoreContentCopyWithImpl<StoreContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) storeContent,
    required TResult Function() registerComment,
  }) {
    return storeContent(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function()? registerComment,
  }) {
    return storeContent?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function()? registerComment,
    required TResult orElse(),
  }) {
    if (storeContent != null) {
      return storeContent(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreContent value) storeContent,
    required TResult Function(RegisterComment value) registerComment,
  }) {
    return storeContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(RegisterComment value)? registerComment,
  }) {
    return storeContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(RegisterComment value)? registerComment,
    required TResult orElse(),
  }) {
    if (storeContent != null) {
      return storeContent(this);
    }
    return orElse();
  }
}

abstract class StoreContent implements CommentPageEvent {
  const factory StoreContent(String content) = _$StoreContent;

  String get content;
  @JsonKey(ignore: true)
  $StoreContentCopyWith<StoreContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCommentCopyWith<$Res> {
  factory $RegisterCommentCopyWith(
          RegisterComment value, $Res Function(RegisterComment) then) =
      _$RegisterCommentCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterCommentCopyWithImpl<$Res>
    extends _$CommentPageEventCopyWithImpl<$Res>
    implements $RegisterCommentCopyWith<$Res> {
  _$RegisterCommentCopyWithImpl(
      RegisterComment _value, $Res Function(RegisterComment) _then)
      : super(_value, (v) => _then(v as RegisterComment));

  @override
  RegisterComment get _value => super._value as RegisterComment;
}

/// @nodoc

class _$RegisterComment implements RegisterComment {
  const _$RegisterComment();

  @override
  String toString() {
    return 'CommentPageEvent.registerComment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterComment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) storeContent,
    required TResult Function() registerComment,
  }) {
    return registerComment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function()? registerComment,
  }) {
    return registerComment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function()? registerComment,
    required TResult orElse(),
  }) {
    if (registerComment != null) {
      return registerComment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreContent value) storeContent,
    required TResult Function(RegisterComment value) registerComment,
  }) {
    return registerComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(RegisterComment value)? registerComment,
  }) {
    return registerComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(RegisterComment value)? registerComment,
    required TResult orElse(),
  }) {
    if (registerComment != null) {
      return registerComment(this);
    }
    return orElse();
  }
}

abstract class RegisterComment implements CommentPageEvent {
  const factory RegisterComment() = _$RegisterComment;
}
