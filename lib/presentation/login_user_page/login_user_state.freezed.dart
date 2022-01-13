// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginUserStateTearOff {
  const _$LoginUserStateTearOff();

  _LoginUserState call(
      {String username = "", String password = "", bool hidePassword = true}) {
    return _LoginUserState(
      username: username,
      password: password,
      hidePassword: hidePassword,
    );
  }
}

/// @nodoc
const $LoginUserState = _$LoginUserStateTearOff();

/// @nodoc
mixin _$LoginUserState {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get hidePassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginUserStateCopyWith<LoginUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserStateCopyWith<$Res> {
  factory $LoginUserStateCopyWith(
          LoginUserState value, $Res Function(LoginUserState) then) =
      _$LoginUserStateCopyWithImpl<$Res>;
  $Res call({String username, String password, bool hidePassword});
}

/// @nodoc
class _$LoginUserStateCopyWithImpl<$Res>
    implements $LoginUserStateCopyWith<$Res> {
  _$LoginUserStateCopyWithImpl(this._value, this._then);

  final LoginUserState _value;
  // ignore: unused_field
  final $Res Function(LoginUserState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? hidePassword = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      hidePassword: hidePassword == freezed
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginUserStateCopyWith<$Res>
    implements $LoginUserStateCopyWith<$Res> {
  factory _$LoginUserStateCopyWith(
          _LoginUserState value, $Res Function(_LoginUserState) then) =
      __$LoginUserStateCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password, bool hidePassword});
}

/// @nodoc
class __$LoginUserStateCopyWithImpl<$Res>
    extends _$LoginUserStateCopyWithImpl<$Res>
    implements _$LoginUserStateCopyWith<$Res> {
  __$LoginUserStateCopyWithImpl(
      _LoginUserState _value, $Res Function(_LoginUserState) _then)
      : super(_value, (v) => _then(v as _LoginUserState));

  @override
  _LoginUserState get _value => super._value as _LoginUserState;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? hidePassword = freezed,
  }) {
    return _then(_LoginUserState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      hidePassword: hidePassword == freezed
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginUserState implements _LoginUserState {
  _$_LoginUserState(
      {this.username = "", this.password = "", this.hidePassword = true});

  @JsonKey()
  @override
  final String username;
  @JsonKey()
  @override
  final String password;
  @JsonKey()
  @override
  final bool hidePassword;

  @override
  String toString() {
    return 'LoginUserState(username: $username, password: $password, hidePassword: $hidePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginUserState &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.hidePassword, hidePassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(hidePassword));

  @JsonKey(ignore: true)
  @override
  _$LoginUserStateCopyWith<_LoginUserState> get copyWith =>
      __$LoginUserStateCopyWithImpl<_LoginUserState>(this, _$identity);
}

abstract class _LoginUserState implements LoginUserState {
  factory _LoginUserState(
      {String username,
      String password,
      bool hidePassword}) = _$_LoginUserState;

  @override
  String get username;
  @override
  String get password;
  @override
  bool get hidePassword;
  @override
  @JsonKey(ignore: true)
  _$LoginUserStateCopyWith<_LoginUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
