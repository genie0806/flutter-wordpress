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

  StoreEmail storeEmail(String email) {
    return StoreEmail(
      email,
    );
  }

  StorePostId storePostId(int postId) {
    return StorePostId(
      postId,
    );
  }

  StoreNickname storeNickname(String nickname) {
    return StoreNickname(
      nickname,
    );
  }

  RegisterComment registerComment(CommentGetModel comment) {
    return RegisterComment(
      comment,
    );
  }
}

/// @nodoc
const $CommentPageEvent = _$CommentPageEventTearOff();

/// @nodoc
mixin _$CommentPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) storeContent,
    required TResult Function(String email) storeEmail,
    required TResult Function(int postId) storePostId,
    required TResult Function(String nickname) storeNickname,
    required TResult Function(CommentGetModel comment) registerComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreContent value) storeContent,
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePostId value) storePostId,
    required TResult Function(StoreNickname value) storeNickname,
    required TResult Function(RegisterComment value) registerComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
    TResult Function(RegisterComment value)? registerComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
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
    required TResult Function(String email) storeEmail,
    required TResult Function(int postId) storePostId,
    required TResult Function(String nickname) storeNickname,
    required TResult Function(CommentGetModel comment) registerComment,
  }) {
    return storeContent(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
  }) {
    return storeContent?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
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
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePostId value) storePostId,
    required TResult Function(StoreNickname value) storeNickname,
    required TResult Function(RegisterComment value) registerComment,
  }) {
    return storeContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
    TResult Function(RegisterComment value)? registerComment,
  }) {
    return storeContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
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
abstract class $StoreEmailCopyWith<$Res> {
  factory $StoreEmailCopyWith(
          StoreEmail value, $Res Function(StoreEmail) then) =
      _$StoreEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$StoreEmailCopyWithImpl<$Res>
    extends _$CommentPageEventCopyWithImpl<$Res>
    implements $StoreEmailCopyWith<$Res> {
  _$StoreEmailCopyWithImpl(StoreEmail _value, $Res Function(StoreEmail) _then)
      : super(_value, (v) => _then(v as StoreEmail));

  @override
  StoreEmail get _value => super._value as StoreEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(StoreEmail(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreEmail implements StoreEmail {
  const _$StoreEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'CommentPageEvent.storeEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreEmail &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $StoreEmailCopyWith<StoreEmail> get copyWith =>
      _$StoreEmailCopyWithImpl<StoreEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) storeContent,
    required TResult Function(String email) storeEmail,
    required TResult Function(int postId) storePostId,
    required TResult Function(String nickname) storeNickname,
    required TResult Function(CommentGetModel comment) registerComment,
  }) {
    return storeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
  }) {
    return storeEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
    required TResult orElse(),
  }) {
    if (storeEmail != null) {
      return storeEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreContent value) storeContent,
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePostId value) storePostId,
    required TResult Function(StoreNickname value) storeNickname,
    required TResult Function(RegisterComment value) registerComment,
  }) {
    return storeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
    TResult Function(RegisterComment value)? registerComment,
  }) {
    return storeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
    TResult Function(RegisterComment value)? registerComment,
    required TResult orElse(),
  }) {
    if (storeEmail != null) {
      return storeEmail(this);
    }
    return orElse();
  }
}

abstract class StoreEmail implements CommentPageEvent {
  const factory StoreEmail(String email) = _$StoreEmail;

  String get email;
  @JsonKey(ignore: true)
  $StoreEmailCopyWith<StoreEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorePostIdCopyWith<$Res> {
  factory $StorePostIdCopyWith(
          StorePostId value, $Res Function(StorePostId) then) =
      _$StorePostIdCopyWithImpl<$Res>;
  $Res call({int postId});
}

/// @nodoc
class _$StorePostIdCopyWithImpl<$Res>
    extends _$CommentPageEventCopyWithImpl<$Res>
    implements $StorePostIdCopyWith<$Res> {
  _$StorePostIdCopyWithImpl(
      StorePostId _value, $Res Function(StorePostId) _then)
      : super(_value, (v) => _then(v as StorePostId));

  @override
  StorePostId get _value => super._value as StorePostId;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(StorePostId(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StorePostId implements StorePostId {
  const _$StorePostId(this.postId);

  @override
  final int postId;

  @override
  String toString() {
    return 'CommentPageEvent.storePostId(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StorePostId &&
            const DeepCollectionEquality().equals(other.postId, postId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postId));

  @JsonKey(ignore: true)
  @override
  $StorePostIdCopyWith<StorePostId> get copyWith =>
      _$StorePostIdCopyWithImpl<StorePostId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) storeContent,
    required TResult Function(String email) storeEmail,
    required TResult Function(int postId) storePostId,
    required TResult Function(String nickname) storeNickname,
    required TResult Function(CommentGetModel comment) registerComment,
  }) {
    return storePostId(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
  }) {
    return storePostId?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
    required TResult orElse(),
  }) {
    if (storePostId != null) {
      return storePostId(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreContent value) storeContent,
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePostId value) storePostId,
    required TResult Function(StoreNickname value) storeNickname,
    required TResult Function(RegisterComment value) registerComment,
  }) {
    return storePostId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
    TResult Function(RegisterComment value)? registerComment,
  }) {
    return storePostId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
    TResult Function(RegisterComment value)? registerComment,
    required TResult orElse(),
  }) {
    if (storePostId != null) {
      return storePostId(this);
    }
    return orElse();
  }
}

abstract class StorePostId implements CommentPageEvent {
  const factory StorePostId(int postId) = _$StorePostId;

  int get postId;
  @JsonKey(ignore: true)
  $StorePostIdCopyWith<StorePostId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreNicknameCopyWith<$Res> {
  factory $StoreNicknameCopyWith(
          StoreNickname value, $Res Function(StoreNickname) then) =
      _$StoreNicknameCopyWithImpl<$Res>;
  $Res call({String nickname});
}

/// @nodoc
class _$StoreNicknameCopyWithImpl<$Res>
    extends _$CommentPageEventCopyWithImpl<$Res>
    implements $StoreNicknameCopyWith<$Res> {
  _$StoreNicknameCopyWithImpl(
      StoreNickname _value, $Res Function(StoreNickname) _then)
      : super(_value, (v) => _then(v as StoreNickname));

  @override
  StoreNickname get _value => super._value as StoreNickname;

  @override
  $Res call({
    Object? nickname = freezed,
  }) {
    return _then(StoreNickname(
      nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreNickname implements StoreNickname {
  const _$StoreNickname(this.nickname);

  @override
  final String nickname;

  @override
  String toString() {
    return 'CommentPageEvent.storeNickname(nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreNickname &&
            const DeepCollectionEquality().equals(other.nickname, nickname));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nickname));

  @JsonKey(ignore: true)
  @override
  $StoreNicknameCopyWith<StoreNickname> get copyWith =>
      _$StoreNicknameCopyWithImpl<StoreNickname>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) storeContent,
    required TResult Function(String email) storeEmail,
    required TResult Function(int postId) storePostId,
    required TResult Function(String nickname) storeNickname,
    required TResult Function(CommentGetModel comment) registerComment,
  }) {
    return storeNickname(nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
  }) {
    return storeNickname?.call(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
    required TResult orElse(),
  }) {
    if (storeNickname != null) {
      return storeNickname(nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreContent value) storeContent,
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePostId value) storePostId,
    required TResult Function(StoreNickname value) storeNickname,
    required TResult Function(RegisterComment value) registerComment,
  }) {
    return storeNickname(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
    TResult Function(RegisterComment value)? registerComment,
  }) {
    return storeNickname?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
    TResult Function(RegisterComment value)? registerComment,
    required TResult orElse(),
  }) {
    if (storeNickname != null) {
      return storeNickname(this);
    }
    return orElse();
  }
}

abstract class StoreNickname implements CommentPageEvent {
  const factory StoreNickname(String nickname) = _$StoreNickname;

  String get nickname;
  @JsonKey(ignore: true)
  $StoreNicknameCopyWith<StoreNickname> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCommentCopyWith<$Res> {
  factory $RegisterCommentCopyWith(
          RegisterComment value, $Res Function(RegisterComment) then) =
      _$RegisterCommentCopyWithImpl<$Res>;
  $Res call({CommentGetModel comment});

  $CommentGetModelCopyWith<$Res> get comment;
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

  @override
  $Res call({
    Object? comment = freezed,
  }) {
    return _then(RegisterComment(
      comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentGetModel,
    ));
  }

  @override
  $CommentGetModelCopyWith<$Res> get comment {
    return $CommentGetModelCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc

class _$RegisterComment implements RegisterComment {
  const _$RegisterComment(this.comment);

  @override
  final CommentGetModel comment;

  @override
  String toString() {
    return 'CommentPageEvent.registerComment(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterComment &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
  $RegisterCommentCopyWith<RegisterComment> get copyWith =>
      _$RegisterCommentCopyWithImpl<RegisterComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) storeContent,
    required TResult Function(String email) storeEmail,
    required TResult Function(int postId) storePostId,
    required TResult Function(String nickname) storeNickname,
    required TResult Function(CommentGetModel comment) registerComment,
  }) {
    return registerComment(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
  }) {
    return registerComment?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? storeContent,
    TResult Function(String email)? storeEmail,
    TResult Function(int postId)? storePostId,
    TResult Function(String nickname)? storeNickname,
    TResult Function(CommentGetModel comment)? registerComment,
    required TResult orElse(),
  }) {
    if (registerComment != null) {
      return registerComment(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreContent value) storeContent,
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePostId value) storePostId,
    required TResult Function(StoreNickname value) storeNickname,
    required TResult Function(RegisterComment value) registerComment,
  }) {
    return registerComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
    TResult Function(RegisterComment value)? registerComment,
  }) {
    return registerComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreContent value)? storeContent,
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePostId value)? storePostId,
    TResult Function(StoreNickname value)? storeNickname,
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
  const factory RegisterComment(CommentGetModel comment) = _$RegisterComment;

  CommentGetModel get comment;
  @JsonKey(ignore: true)
  $RegisterCommentCopyWith<RegisterComment> get copyWith =>
      throw _privateConstructorUsedError;
}
