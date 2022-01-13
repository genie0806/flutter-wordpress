// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserModel _$CreateUserModelFromJson(Map<String, dynamic> json) {
  return _CreateUserModel.fromJson(json);
}

/// @nodoc
class _$CreateUserModelTearOff {
  const _$CreateUserModelTearOff();

  _CreateUserModel call(
      {String? email,
      String? password,
      String? confirmPassword,
      String? nickname}) {
    return _CreateUserModel(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      nickname: nickname,
    );
  }

  CreateUserModel fromJson(Map<String, Object?> json) {
    return CreateUserModel.fromJson(json);
  }
}

/// @nodoc
const $CreateUserModel = _$CreateUserModelTearOff();

/// @nodoc
mixin _$CreateUserModel {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserModelCopyWith<CreateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserModelCopyWith<$Res> {
  factory $CreateUserModelCopyWith(
          CreateUserModel value, $Res Function(CreateUserModel) then) =
      _$CreateUserModelCopyWithImpl<$Res>;
  $Res call(
      {String? email,
      String? password,
      String? confirmPassword,
      String? nickname});
}

/// @nodoc
class _$CreateUserModelCopyWithImpl<$Res>
    implements $CreateUserModelCopyWith<$Res> {
  _$CreateUserModelCopyWithImpl(this._value, this._then);

  final CreateUserModel _value;
  // ignore: unused_field
  final $Res Function(CreateUserModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? nickname = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CreateUserModelCopyWith<$Res>
    implements $CreateUserModelCopyWith<$Res> {
  factory _$CreateUserModelCopyWith(
          _CreateUserModel value, $Res Function(_CreateUserModel) then) =
      __$CreateUserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? email,
      String? password,
      String? confirmPassword,
      String? nickname});
}

/// @nodoc
class __$CreateUserModelCopyWithImpl<$Res>
    extends _$CreateUserModelCopyWithImpl<$Res>
    implements _$CreateUserModelCopyWith<$Res> {
  __$CreateUserModelCopyWithImpl(
      _CreateUserModel _value, $Res Function(_CreateUserModel) _then)
      : super(_value, (v) => _then(v as _CreateUserModel));

  @override
  _CreateUserModel get _value => super._value as _CreateUserModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? nickname = freezed,
  }) {
    return _then(_CreateUserModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUserModel implements _CreateUserModel {
  _$_CreateUserModel(
      {this.email, this.password, this.confirmPassword, this.nickname});

  factory _$_CreateUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserModelFromJson(json);

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? confirmPassword;
  @override
  final String? nickname;

  @override
  String toString() {
    return 'CreateUserModel(email: $email, password: $password, confirmPassword: $confirmPassword, nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateUserModel &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality().equals(other.nickname, nickname));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(nickname));

  @JsonKey(ignore: true)
  @override
  _$CreateUserModelCopyWith<_CreateUserModel> get copyWith =>
      __$CreateUserModelCopyWithImpl<_CreateUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUserModelToJson(this);
  }
}

abstract class _CreateUserModel implements CreateUserModel {
  factory _CreateUserModel(
      {String? email,
      String? password,
      String? confirmPassword,
      String? nickname}) = _$_CreateUserModel;

  factory _CreateUserModel.fromJson(Map<String, dynamic> json) =
      _$_CreateUserModel.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get confirmPassword;
  @override
  String? get nickname;
  @override
  @JsonKey(ignore: true)
  _$CreateUserModelCopyWith<_CreateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
