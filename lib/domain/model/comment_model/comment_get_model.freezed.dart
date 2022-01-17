// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_get_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentGetModel _$CommentGetModelFromJson(Map<String, dynamic> json) {
  return _CommentGetmodel.fromJson(json);
}

/// @nodoc
class _$CommentGetModelTearOff {
  const _$CommentGetModelTearOff();

  _CommentGetmodel call(
      {int? id,
      String? author,
      String? avatar,
      String? content,
      String? date,
      int? post,
      String? email}) {
    return _CommentGetmodel(
      id: id,
      author: author,
      avatar: avatar,
      content: content,
      date: date,
      post: post,
      email: email,
    );
  }

  CommentGetModel fromJson(Map<String, Object?> json) {
    return CommentGetModel.fromJson(json);
  }
}

/// @nodoc
const $CommentGetModel = _$CommentGetModelTearOff();

/// @nodoc
mixin _$CommentGetModel {
  int? get id => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  int? get post => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentGetModelCopyWith<CommentGetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentGetModelCopyWith<$Res> {
  factory $CommentGetModelCopyWith(
          CommentGetModel value, $Res Function(CommentGetModel) then) =
      _$CommentGetModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? author,
      String? avatar,
      String? content,
      String? date,
      int? post,
      String? email});
}

/// @nodoc
class _$CommentGetModelCopyWithImpl<$Res>
    implements $CommentGetModelCopyWith<$Res> {
  _$CommentGetModelCopyWithImpl(this._value, this._then);

  final CommentGetModel _value;
  // ignore: unused_field
  final $Res Function(CommentGetModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? avatar = freezed,
    Object? content = freezed,
    Object? date = freezed,
    Object? post = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommentGetmodelCopyWith<$Res>
    implements $CommentGetModelCopyWith<$Res> {
  factory _$CommentGetmodelCopyWith(
          _CommentGetmodel value, $Res Function(_CommentGetmodel) then) =
      __$CommentGetmodelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? author,
      String? avatar,
      String? content,
      String? date,
      int? post,
      String? email});
}

/// @nodoc
class __$CommentGetmodelCopyWithImpl<$Res>
    extends _$CommentGetModelCopyWithImpl<$Res>
    implements _$CommentGetmodelCopyWith<$Res> {
  __$CommentGetmodelCopyWithImpl(
      _CommentGetmodel _value, $Res Function(_CommentGetmodel) _then)
      : super(_value, (v) => _then(v as _CommentGetmodel));

  @override
  _CommentGetmodel get _value => super._value as _CommentGetmodel;

  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? avatar = freezed,
    Object? content = freezed,
    Object? date = freezed,
    Object? post = freezed,
    Object? email = freezed,
  }) {
    return _then(_CommentGetmodel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentGetmodel implements _CommentGetmodel {
  _$_CommentGetmodel(
      {this.id,
      this.author,
      this.avatar,
      this.content,
      this.date,
      this.post,
      this.email});

  factory _$_CommentGetmodel.fromJson(Map<String, dynamic> json) =>
      _$$_CommentGetmodelFromJson(json);

  @override
  final int? id;
  @override
  final String? author;
  @override
  final String? avatar;
  @override
  final String? content;
  @override
  final String? date;
  @override
  final int? post;
  @override
  final String? email;

  @override
  String toString() {
    return 'CommentGetModel(id: $id, author: $author, avatar: $avatar, content: $content, date: $date, post: $post, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentGetmodel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$CommentGetmodelCopyWith<_CommentGetmodel> get copyWith =>
      __$CommentGetmodelCopyWithImpl<_CommentGetmodel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentGetmodelToJson(this);
  }
}

abstract class _CommentGetmodel implements CommentGetModel {
  factory _CommentGetmodel(
      {int? id,
      String? author,
      String? avatar,
      String? content,
      String? date,
      int? post,
      String? email}) = _$_CommentGetmodel;

  factory _CommentGetmodel.fromJson(Map<String, dynamic> json) =
      _$_CommentGetmodel.fromJson;

  @override
  int? get id;
  @override
  String? get author;
  @override
  String? get avatar;
  @override
  String? get content;
  @override
  String? get date;
  @override
  int? get post;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$CommentGetmodelCopyWith<_CommentGetmodel> get copyWith =>
      throw _privateConstructorUsedError;
}
