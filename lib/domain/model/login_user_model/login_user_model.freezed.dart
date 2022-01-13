// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginUserModel _$LoginUserModelFromJson(Map<String, dynamic> json) {
  return _LoginUserModel.fromJson(json);
}

/// @nodoc
class _$LoginUserModelTearOff {
  const _$LoginUserModelTearOff();

  _LoginUserModel call(
      {String? token,
      int? id,
      String? email,
      String? nicename,
      String? firstName,
      String? lastName,
      String? displayName}) {
    return _LoginUserModel(
      token: token,
      id: id,
      email: email,
      nicename: nicename,
      firstName: firstName,
      lastName: lastName,
      displayName: displayName,
    );
  }

  LoginUserModel fromJson(Map<String, Object?> json) {
    return LoginUserModel.fromJson(json);
  }
}

/// @nodoc
const $LoginUserModel = _$LoginUserModelTearOff();

/// @nodoc
mixin _$LoginUserModel {
  String? get token => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get nicename => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserModelCopyWith<LoginUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserModelCopyWith<$Res> {
  factory $LoginUserModelCopyWith(
          LoginUserModel value, $Res Function(LoginUserModel) then) =
      _$LoginUserModelCopyWithImpl<$Res>;
  $Res call(
      {String? token,
      int? id,
      String? email,
      String? nicename,
      String? firstName,
      String? lastName,
      String? displayName});
}

/// @nodoc
class _$LoginUserModelCopyWithImpl<$Res>
    implements $LoginUserModelCopyWith<$Res> {
  _$LoginUserModelCopyWithImpl(this._value, this._then);

  final LoginUserModel _value;
  // ignore: unused_field
  final $Res Function(LoginUserModel) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? id = freezed,
    Object? email = freezed,
    Object? nicename = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nicename: nicename == freezed
          ? _value.nicename
          : nicename // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LoginUserModelCopyWith<$Res>
    implements $LoginUserModelCopyWith<$Res> {
  factory _$LoginUserModelCopyWith(
          _LoginUserModel value, $Res Function(_LoginUserModel) then) =
      __$LoginUserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? token,
      int? id,
      String? email,
      String? nicename,
      String? firstName,
      String? lastName,
      String? displayName});
}

/// @nodoc
class __$LoginUserModelCopyWithImpl<$Res>
    extends _$LoginUserModelCopyWithImpl<$Res>
    implements _$LoginUserModelCopyWith<$Res> {
  __$LoginUserModelCopyWithImpl(
      _LoginUserModel _value, $Res Function(_LoginUserModel) _then)
      : super(_value, (v) => _then(v as _LoginUserModel));

  @override
  _LoginUserModel get _value => super._value as _LoginUserModel;

  @override
  $Res call({
    Object? token = freezed,
    Object? id = freezed,
    Object? email = freezed,
    Object? nicename = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_LoginUserModel(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nicename: nicename == freezed
          ? _value.nicename
          : nicename // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginUserModel implements _LoginUserModel {
  _$_LoginUserModel(
      {this.token,
      this.id,
      this.email,
      this.nicename,
      this.firstName,
      this.lastName,
      this.displayName});

  factory _$_LoginUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginUserModelFromJson(json);

  @override
  final String? token;
  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? nicename;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? displayName;

  @override
  String toString() {
    return 'LoginUserModel(token: $token, id: $id, email: $email, nicename: $nicename, firstName: $firstName, lastName: $lastName, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginUserModel &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.nicename, nicename) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(nicename),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(displayName));

  @JsonKey(ignore: true)
  @override
  _$LoginUserModelCopyWith<_LoginUserModel> get copyWith =>
      __$LoginUserModelCopyWithImpl<_LoginUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginUserModelToJson(this);
  }
}

abstract class _LoginUserModel implements LoginUserModel {
  factory _LoginUserModel(
      {String? token,
      int? id,
      String? email,
      String? nicename,
      String? firstName,
      String? lastName,
      String? displayName}) = _$_LoginUserModel;

  factory _LoginUserModel.fromJson(Map<String, dynamic> json) =
      _$_LoginUserModel.fromJson;

  @override
  String? get token;
  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get nicename;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  @JsonKey(ignore: true)
  _$LoginUserModelCopyWith<_LoginUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
