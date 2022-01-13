// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateUserEventTearOff {
  const _$CreateUserEventTearOff();

  StoreEmail storeEmail(String email) {
    return StoreEmail(
      email,
    );
  }

  StorePassword storePassword(String password) {
    return StorePassword(
      password,
    );
  }

  StoreConfirmPassword storeConfirmPassword(String confirmPassword) {
    return StoreConfirmPassword(
      confirmPassword,
    );
  }

  StoreNickName storenickname(String nickname) {
    return StoreNickName(
      nickname,
    );
  }

  RegisterUser registerUser() {
    return const RegisterUser();
  }

  TogglePasswordVisibility togglePasswordVisibility() {
    return const TogglePasswordVisibility();
  }

  ToggleConfirmPasswordVisibility toggleConfirmPasswordVisibility() {
    return const ToggleConfirmPasswordVisibility();
  }
}

/// @nodoc
const $CreateUserEvent = _$CreateUserEventTearOff();

/// @nodoc
mixin _$CreateUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) storeEmail,
    required TResult Function(String password) storePassword,
    required TResult Function(String confirmPassword) storeConfirmPassword,
    required TResult Function(String nickname) storenickname,
    required TResult Function() registerUser,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(StoreConfirmPassword value) storeConfirmPassword,
    required TResult Function(StoreNickName value) storenickname,
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserEventCopyWith<$Res> {
  factory $CreateUserEventCopyWith(
          CreateUserEvent value, $Res Function(CreateUserEvent) then) =
      _$CreateUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateUserEventCopyWithImpl<$Res>
    implements $CreateUserEventCopyWith<$Res> {
  _$CreateUserEventCopyWithImpl(this._value, this._then);

  final CreateUserEvent _value;
  // ignore: unused_field
  final $Res Function(CreateUserEvent) _then;
}

/// @nodoc
abstract class $StoreEmailCopyWith<$Res> {
  factory $StoreEmailCopyWith(
          StoreEmail value, $Res Function(StoreEmail) then) =
      _$StoreEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$StoreEmailCopyWithImpl<$Res> extends _$CreateUserEventCopyWithImpl<$Res>
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
    return 'CreateUserEvent.storeEmail(email: $email)';
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
    required TResult Function(String email) storeEmail,
    required TResult Function(String password) storePassword,
    required TResult Function(String confirmPassword) storeConfirmPassword,
    required TResult Function(String nickname) storenickname,
    required TResult Function() registerUser,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
  }) {
    return storeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
  }) {
    return storeEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
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
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(StoreConfirmPassword value) storeConfirmPassword,
    required TResult Function(StoreNickName value) storenickname,
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
  }) {
    return storeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
  }) {
    return storeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) {
    if (storeEmail != null) {
      return storeEmail(this);
    }
    return orElse();
  }
}

abstract class StoreEmail implements CreateUserEvent {
  const factory StoreEmail(String email) = _$StoreEmail;

  String get email;
  @JsonKey(ignore: true)
  $StoreEmailCopyWith<StoreEmail> get copyWith =>
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
    extends _$CreateUserEventCopyWithImpl<$Res>
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
    return 'CreateUserEvent.storePassword(password: $password)';
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
    required TResult Function(String email) storeEmail,
    required TResult Function(String password) storePassword,
    required TResult Function(String confirmPassword) storeConfirmPassword,
    required TResult Function(String nickname) storenickname,
    required TResult Function() registerUser,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
  }) {
    return storePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
  }) {
    return storePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
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
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(StoreConfirmPassword value) storeConfirmPassword,
    required TResult Function(StoreNickName value) storenickname,
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
  }) {
    return storePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
  }) {
    return storePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) {
    if (storePassword != null) {
      return storePassword(this);
    }
    return orElse();
  }
}

abstract class StorePassword implements CreateUserEvent {
  const factory StorePassword(String password) = _$StorePassword;

  String get password;
  @JsonKey(ignore: true)
  $StorePasswordCopyWith<StorePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreConfirmPasswordCopyWith<$Res> {
  factory $StoreConfirmPasswordCopyWith(StoreConfirmPassword value,
          $Res Function(StoreConfirmPassword) then) =
      _$StoreConfirmPasswordCopyWithImpl<$Res>;
  $Res call({String confirmPassword});
}

/// @nodoc
class _$StoreConfirmPasswordCopyWithImpl<$Res>
    extends _$CreateUserEventCopyWithImpl<$Res>
    implements $StoreConfirmPasswordCopyWith<$Res> {
  _$StoreConfirmPasswordCopyWithImpl(
      StoreConfirmPassword _value, $Res Function(StoreConfirmPassword) _then)
      : super(_value, (v) => _then(v as StoreConfirmPassword));

  @override
  StoreConfirmPassword get _value => super._value as StoreConfirmPassword;

  @override
  $Res call({
    Object? confirmPassword = freezed,
  }) {
    return _then(StoreConfirmPassword(
      confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreConfirmPassword implements StoreConfirmPassword {
  const _$StoreConfirmPassword(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'CreateUserEvent.storeConfirmPassword(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreConfirmPassword &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  $StoreConfirmPasswordCopyWith<StoreConfirmPassword> get copyWith =>
      _$StoreConfirmPasswordCopyWithImpl<StoreConfirmPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) storeEmail,
    required TResult Function(String password) storePassword,
    required TResult Function(String confirmPassword) storeConfirmPassword,
    required TResult Function(String nickname) storenickname,
    required TResult Function() registerUser,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
  }) {
    return storeConfirmPassword(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
  }) {
    return storeConfirmPassword?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) {
    if (storeConfirmPassword != null) {
      return storeConfirmPassword(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(StoreConfirmPassword value) storeConfirmPassword,
    required TResult Function(StoreNickName value) storenickname,
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
  }) {
    return storeConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
  }) {
    return storeConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) {
    if (storeConfirmPassword != null) {
      return storeConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class StoreConfirmPassword implements CreateUserEvent {
  const factory StoreConfirmPassword(String confirmPassword) =
      _$StoreConfirmPassword;

  String get confirmPassword;
  @JsonKey(ignore: true)
  $StoreConfirmPasswordCopyWith<StoreConfirmPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreNickNameCopyWith<$Res> {
  factory $StoreNickNameCopyWith(
          StoreNickName value, $Res Function(StoreNickName) then) =
      _$StoreNickNameCopyWithImpl<$Res>;
  $Res call({String nickname});
}

/// @nodoc
class _$StoreNickNameCopyWithImpl<$Res>
    extends _$CreateUserEventCopyWithImpl<$Res>
    implements $StoreNickNameCopyWith<$Res> {
  _$StoreNickNameCopyWithImpl(
      StoreNickName _value, $Res Function(StoreNickName) _then)
      : super(_value, (v) => _then(v as StoreNickName));

  @override
  StoreNickName get _value => super._value as StoreNickName;

  @override
  $Res call({
    Object? nickname = freezed,
  }) {
    return _then(StoreNickName(
      nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreNickName implements StoreNickName {
  const _$StoreNickName(this.nickname);

  @override
  final String nickname;

  @override
  String toString() {
    return 'CreateUserEvent.storenickname(nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreNickName &&
            const DeepCollectionEquality().equals(other.nickname, nickname));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nickname));

  @JsonKey(ignore: true)
  @override
  $StoreNickNameCopyWith<StoreNickName> get copyWith =>
      _$StoreNickNameCopyWithImpl<StoreNickName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) storeEmail,
    required TResult Function(String password) storePassword,
    required TResult Function(String confirmPassword) storeConfirmPassword,
    required TResult Function(String nickname) storenickname,
    required TResult Function() registerUser,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
  }) {
    return storenickname(nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
  }) {
    return storenickname?.call(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) {
    if (storenickname != null) {
      return storenickname(nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(StoreConfirmPassword value) storeConfirmPassword,
    required TResult Function(StoreNickName value) storenickname,
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
  }) {
    return storenickname(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
  }) {
    return storenickname?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) {
    if (storenickname != null) {
      return storenickname(this);
    }
    return orElse();
  }
}

abstract class StoreNickName implements CreateUserEvent {
  const factory StoreNickName(String nickname) = _$StoreNickName;

  String get nickname;
  @JsonKey(ignore: true)
  $StoreNickNameCopyWith<StoreNickName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserCopyWith<$Res> {
  factory $RegisterUserCopyWith(
          RegisterUser value, $Res Function(RegisterUser) then) =
      _$RegisterUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterUserCopyWithImpl<$Res>
    extends _$CreateUserEventCopyWithImpl<$Res>
    implements $RegisterUserCopyWith<$Res> {
  _$RegisterUserCopyWithImpl(
      RegisterUser _value, $Res Function(RegisterUser) _then)
      : super(_value, (v) => _then(v as RegisterUser));

  @override
  RegisterUser get _value => super._value as RegisterUser;
}

/// @nodoc

class _$RegisterUser implements RegisterUser {
  const _$RegisterUser();

  @override
  String toString() {
    return 'CreateUserEvent.registerUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) storeEmail,
    required TResult Function(String password) storePassword,
    required TResult Function(String confirmPassword) storeConfirmPassword,
    required TResult Function(String nickname) storenickname,
    required TResult Function() registerUser,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
  }) {
    return registerUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
  }) {
    return registerUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(StoreConfirmPassword value) storeConfirmPassword,
    required TResult Function(StoreNickName value) storenickname,
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class RegisterUser implements CreateUserEvent {
  const factory RegisterUser() = _$RegisterUser;
}

/// @nodoc
abstract class $TogglePasswordVisibilityCopyWith<$Res> {
  factory $TogglePasswordVisibilityCopyWith(TogglePasswordVisibility value,
          $Res Function(TogglePasswordVisibility) then) =
      _$TogglePasswordVisibilityCopyWithImpl<$Res>;
}

/// @nodoc
class _$TogglePasswordVisibilityCopyWithImpl<$Res>
    extends _$CreateUserEventCopyWithImpl<$Res>
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
    return 'CreateUserEvent.togglePasswordVisibility()';
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
    required TResult Function(String email) storeEmail,
    required TResult Function(String password) storePassword,
    required TResult Function(String confirmPassword) storeConfirmPassword,
    required TResult Function(String nickname) storenickname,
    required TResult Function() registerUser,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
  }) {
    return togglePasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
  }) {
    return togglePasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
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
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(StoreConfirmPassword value) storeConfirmPassword,
    required TResult Function(StoreNickName value) storenickname,
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class TogglePasswordVisibility implements CreateUserEvent {
  const factory TogglePasswordVisibility() = _$TogglePasswordVisibility;
}

/// @nodoc
abstract class $ToggleConfirmPasswordVisibilityCopyWith<$Res> {
  factory $ToggleConfirmPasswordVisibilityCopyWith(
          ToggleConfirmPasswordVisibility value,
          $Res Function(ToggleConfirmPasswordVisibility) then) =
      _$ToggleConfirmPasswordVisibilityCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToggleConfirmPasswordVisibilityCopyWithImpl<$Res>
    extends _$CreateUserEventCopyWithImpl<$Res>
    implements $ToggleConfirmPasswordVisibilityCopyWith<$Res> {
  _$ToggleConfirmPasswordVisibilityCopyWithImpl(
      ToggleConfirmPasswordVisibility _value,
      $Res Function(ToggleConfirmPasswordVisibility) _then)
      : super(_value, (v) => _then(v as ToggleConfirmPasswordVisibility));

  @override
  ToggleConfirmPasswordVisibility get _value =>
      super._value as ToggleConfirmPasswordVisibility;
}

/// @nodoc

class _$ToggleConfirmPasswordVisibility
    implements ToggleConfirmPasswordVisibility {
  const _$ToggleConfirmPasswordVisibility();

  @override
  String toString() {
    return 'CreateUserEvent.toggleConfirmPasswordVisibility()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToggleConfirmPasswordVisibility);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) storeEmail,
    required TResult Function(String password) storePassword,
    required TResult Function(String confirmPassword) storeConfirmPassword,
    required TResult Function(String nickname) storenickname,
    required TResult Function() registerUser,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
  }) {
    return toggleConfirmPasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
  }) {
    return toggleConfirmPasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? storeEmail,
    TResult Function(String password)? storePassword,
    TResult Function(String confirmPassword)? storeConfirmPassword,
    TResult Function(String nickname)? storenickname,
    TResult Function()? registerUser,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) {
    if (toggleConfirmPasswordVisibility != null) {
      return toggleConfirmPasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreEmail value) storeEmail,
    required TResult Function(StorePassword value) storePassword,
    required TResult Function(StoreConfirmPassword value) storeConfirmPassword,
    required TResult Function(StoreNickName value) storenickname,
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
  }) {
    return toggleConfirmPasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
  }) {
    return toggleConfirmPasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreEmail value)? storeEmail,
    TResult Function(StorePassword value)? storePassword,
    TResult Function(StoreConfirmPassword value)? storeConfirmPassword,
    TResult Function(StoreNickName value)? storenickname,
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    required TResult orElse(),
  }) {
    if (toggleConfirmPasswordVisibility != null) {
      return toggleConfirmPasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class ToggleConfirmPasswordVisibility implements CreateUserEvent {
  const factory ToggleConfirmPasswordVisibility() =
      _$ToggleConfirmPasswordVisibility;
}
