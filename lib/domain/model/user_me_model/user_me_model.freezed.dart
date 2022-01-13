// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_me_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserMeModel _$UserMeModelFromJson(Map<String, dynamic> json) {
  return _UserMeModel.fromJson(json);
}

/// @nodoc
class _$UserMeModelTearOff {
  const _$UserMeModelTearOff();

  _UserMeModel call(
      {int? id,
      String? username,
      String? firstName,
      String? lastName,
      String? email,
      String? nickname,
      String? avatarUrls}) {
    return _UserMeModel(
      id: id,
      username: username,
      firstName: firstName,
      lastName: lastName,
      email: email,
      nickname: nickname,
      avatarUrls: avatarUrls,
    );
  }

  UserMeModel fromJson(Map<String, Object?> json) {
    return UserMeModel.fromJson(json);
  }
}

/// @nodoc
const $UserMeModel = _$UserMeModelTearOff();

/// @nodoc
mixin _$UserMeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get avatarUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMeModelCopyWith<UserMeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMeModelCopyWith<$Res> {
  factory $UserMeModelCopyWith(
          UserMeModel value, $Res Function(UserMeModel) then) =
      _$UserMeModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? username,
      String? firstName,
      String? lastName,
      String? email,
      String? nickname,
      String? avatarUrls});
}

/// @nodoc
class _$UserMeModelCopyWithImpl<$Res> implements $UserMeModelCopyWith<$Res> {
  _$UserMeModelCopyWithImpl(this._value, this._then);

  final UserMeModel _value;
  // ignore: unused_field
  final $Res Function(UserMeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? nickname = freezed,
    Object? avatarUrls = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrls: avatarUrls == freezed
          ? _value.avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserMeModelCopyWith<$Res>
    implements $UserMeModelCopyWith<$Res> {
  factory _$UserMeModelCopyWith(
          _UserMeModel value, $Res Function(_UserMeModel) then) =
      __$UserMeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? username,
      String? firstName,
      String? lastName,
      String? email,
      String? nickname,
      String? avatarUrls});
}

/// @nodoc
class __$UserMeModelCopyWithImpl<$Res> extends _$UserMeModelCopyWithImpl<$Res>
    implements _$UserMeModelCopyWith<$Res> {
  __$UserMeModelCopyWithImpl(
      _UserMeModel _value, $Res Function(_UserMeModel) _then)
      : super(_value, (v) => _then(v as _UserMeModel));

  @override
  _UserMeModel get _value => super._value as _UserMeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? nickname = freezed,
    Object? avatarUrls = freezed,
  }) {
    return _then(_UserMeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrls: avatarUrls == freezed
          ? _value.avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserMeModel implements _UserMeModel {
  _$_UserMeModel(
      {this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.email,
      this.nickname,
      this.avatarUrls});

  factory _$_UserMeModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserMeModelFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? nickname;
  @override
  final String? avatarUrls;

  @override
  String toString() {
    return 'UserMeModel(id: $id, username: $username, firstName: $firstName, lastName: $lastName, email: $email, nickname: $nickname, avatarUrls: $avatarUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserMeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality()
                .equals(other.avatarUrls, avatarUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(avatarUrls));

  @JsonKey(ignore: true)
  @override
  _$UserMeModelCopyWith<_UserMeModel> get copyWith =>
      __$UserMeModelCopyWithImpl<_UserMeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserMeModelToJson(this);
  }
}

abstract class _UserMeModel implements UserMeModel {
  factory _UserMeModel(
      {int? id,
      String? username,
      String? firstName,
      String? lastName,
      String? email,
      String? nickname,
      String? avatarUrls}) = _$_UserMeModel;

  factory _UserMeModel.fromJson(Map<String, dynamic> json) =
      _$_UserMeModel.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  String? get nickname;
  @override
  String? get avatarUrls;
  @override
  @JsonKey(ignore: true)
  _$UserMeModelCopyWith<_UserMeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
