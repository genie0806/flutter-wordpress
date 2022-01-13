// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginUserEventTearOff {
  const _$LoginUserEventTearOff();

  StoreUsername storeUsername(String username) {
    return StoreUsername(
      username,
    );
  }

  StorePassword storePassword(String password) {
    return StorePassword(
      password,
    );
  }

  LoginUser loginUser(String username, String password) {
    return LoginUser(
      username,
      password,
    );
  }

  TogglePasswordVisibility togglePasswordVisibility() {
    return const TogglePasswordVisibility();
  }
}

/// @nodoc
const $LoginUserEvent = _$LoginUserEventTearOff();

/// @nodoc
mixin _$LoginUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) storeUsername,
    required TResult Function(String password) storePassword,
    required TResult Function(String username, String password) loginUser,
    required TResult Function() togglePasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? loginUser,
    TResult Function()? togglePasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? loginUser,
    TResult Function()? togglePasswordVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUsername value) storeUsername,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUsername value)? storeUsername,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUsername value)? storeUsername,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserEventCopyWith<$Res> {
  factory $LoginUserEventCopyWith(
          LoginUserEvent value, $Res Function(LoginUserEvent) then) =
      _$LoginUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginUserEventCopyWithImpl<$Res>
    implements $LoginUserEventCopyWith<$Res> {
  _$LoginUserEventCopyWithImpl(this._value, this._then);

  final LoginUserEvent _value;
  // ignore: unused_field
  final $Res Function(LoginUserEvent) _then;
}

/// @nodoc
abstract class $StoreUsernameCopyWith<$Res> {
  factory $StoreUsernameCopyWith(
          StoreUsername value, $Res Function(StoreUsername) then) =
      _$StoreUsernameCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$StoreUsernameCopyWithImpl<$Res>
    extends _$LoginUserEventCopyWithImpl<$Res>
    implements $StoreUsernameCopyWith<$Res> {
  _$StoreUsernameCopyWithImpl(
      StoreUsername _value, $Res Function(StoreUsername) _then)
      : super(_value, (v) => _then(v as StoreUsername));

  @override
  StoreUsername get _value => super._value as StoreUsername;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(StoreUsername(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreUsername implements StoreUsername {
  const _$StoreUsername(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'LoginUserEvent.storeUsername(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreUsername &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  $StoreUsernameCopyWith<StoreUsername> get copyWith =>
      _$StoreUsernameCopyWithImpl<StoreUsername>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) storeUsername,
    required TResult Function(String password) storePassword,
    required TResult Function(String username, String password) loginUser,
    required TResult Function() togglePasswordVisibility,
  }) {
    return storeUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? loginUser,
    TResult Function()? togglePasswordVisibility,
  }) {
    return storeUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? loginUser,
    TResult Function()? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (storeUsername != null) {
      return storeUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUsername value) storeUsername,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
  }) {
    return storeUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUsername value)? storeUsername,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
  }) {
    return storeUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUsername value)? storeUsername,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (storeUsername != null) {
      return storeUsername(this);
    }
    return orElse();
  }
}

abstract class StoreUsername implements LoginUserEvent {
  const factory StoreUsername(String username) = _$StoreUsername;

  String get username;
  @JsonKey(ignore: true)
  $StoreUsernameCopyWith<StoreUsername> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorePasswordCopyWith<$Res> {
  factory $StorePasswordCopyWith(
          StorePassword value, $Res Function(StorePassword) then) =
      _$StorePasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$StorePasswordCopyWithImpl<$Res>
    extends _$LoginUserEventCopyWithImpl<$Res>
    implements $StorePasswordCopyWith<$Res> {
  _$StorePasswordCopyWithImpl(
      StorePassword _value, $Res Function(StorePassword) _then)
      : super(_value, (v) => _then(v as StorePassword));

  @override
  StorePassword get _value => super._value as StorePassword;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(StorePassword(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StorePassword implements StorePassword {
  const _$StorePassword(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginUserEvent.storePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StorePassword &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $StorePasswordCopyWith<StorePassword> get copyWith =>
      _$StorePasswordCopyWithImpl<StorePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) storeUsername,
    required TResult Function(String password) storePassword,
    required TResult Function(String username, String password) loginUser,
    required TResult Function() togglePasswordVisibility,
  }) {
    return storePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? loginUser,
    TResult Function()? togglePasswordVisibility,
  }) {
    return storePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? loginUser,
    TResult Function()? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (storePassword != null) {
      return storePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUsername value) storeUsername,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
  }) {
    return storePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUsername value)? storeUsername,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
  }) {
    return storePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUsername value)? storeUsername,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (storePassword != null) {
      return storePassword(this);
    }
    return orElse();
  }
}

abstract class StorePassword implements LoginUserEvent {
  const factory StorePassword(String password) = _$StorePassword;

  String get password;
  @JsonKey(ignore: true)
  $StorePasswordCopyWith<StorePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserCopyWith<$Res> {
  factory $LoginUserCopyWith(LoginUser value, $Res Function(LoginUser) then) =
      _$LoginUserCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginUserCopyWithImpl<$Res> extends _$LoginUserEventCopyWithImpl<$Res>
    implements $LoginUserCopyWith<$Res> {
  _$LoginUserCopyWithImpl(LoginUser _value, $Res Function(LoginUser) _then)
      : super(_value, (v) => _then(v as LoginUser));

  @override
  LoginUser get _value => super._value as LoginUser;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(LoginUser(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUser implements LoginUser {
  const _$LoginUser(this.username, this.password);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginUserEvent.loginUser(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginUser &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $LoginUserCopyWith<LoginUser> get copyWith =>
      _$LoginUserCopyWithImpl<LoginUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) storeUsername,
    required TResult Function(String password) storePassword,
    required TResult Function(String username, String password) loginUser,
    required TResult Function() togglePasswordVisibility,
  }) {
    return loginUser(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? loginUser,
    TResult Function()? togglePasswordVisibility,
  }) {
    return loginUser?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? loginUser,
    TResult Function()? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUsername value) storeUsername,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUsername value)? storeUsername,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUsername value)? storeUsername,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class LoginUser implements LoginUserEvent {
  const factory LoginUser(String username, String password) = _$LoginUser;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  $LoginUserCopyWith<LoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TogglePasswordVisibilityCopyWith<$Res> {
  factory $TogglePasswordVisibilityCopyWith(TogglePasswordVisibility value,
          $Res Function(TogglePasswordVisibility) then) =
      _$TogglePasswordVisibilityCopyWithImpl<$Res>;
}

/// @nodoc
class _$TogglePasswordVisibilityCopyWithImpl<$Res>
    extends _$LoginUserEventCopyWithImpl<$Res>
    implements $TogglePasswordVisibilityCopyWith<$Res> {
  _$TogglePasswordVisibilityCopyWithImpl(TogglePasswordVisibility _value,
      $Res Function(TogglePasswordVisibility) _then)
      : super(_value, (v) => _then(v as TogglePasswordVisibility));

  @override
  TogglePasswordVisibility get _value =>
      super._value as TogglePasswordVisibility;
}

/// @nodoc

class _$TogglePasswordVisibility implements TogglePasswordVisibility {
  const _$TogglePasswordVisibility();

  @override
  String toString() {
    return 'LoginUserEvent.togglePasswordVisibility()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TogglePasswordVisibility);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) storeUsername,
    required TResult Function(String password) storePassword,
    required TResult Function(String username, String password) loginUser,
    required TResult Function() togglePasswordVisibility,
  }) {
    return togglePasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? loginUser,
    TResult Function()? togglePasswordVisibility,
  }) {
    return togglePasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? loginUser,
    TResult Function()? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreUsername value) storeUsername,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreUsername value)? storeUsername,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreUsername value)? storeUsername,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class TogglePasswordVisibility implements LoginUserEvent {
  const factory TogglePasswordVisibility() = _$TogglePasswordVisibility;
}
