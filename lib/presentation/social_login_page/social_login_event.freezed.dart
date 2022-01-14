// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SocialLoginEventTearOff {
  const _$SocialLoginEventTearOff();

  SocialLogin socialLogin() {
    return const SocialLogin();
  }
}

/// @nodoc
const $SocialLoginEvent = _$SocialLoginEventTearOff();

/// @nodoc
mixin _$SocialLoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() socialLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? socialLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? socialLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialLogin value) socialLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SocialLogin value)? socialLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLogin value)? socialLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLoginEventCopyWith<$Res> {
  factory $SocialLoginEventCopyWith(
          SocialLoginEvent value, $Res Function(SocialLoginEvent) then) =
      _$SocialLoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocialLoginEventCopyWithImpl<$Res>
    implements $SocialLoginEventCopyWith<$Res> {
  _$SocialLoginEventCopyWithImpl(this._value, this._then);

  final SocialLoginEvent _value;
  // ignore: unused_field
  final $Res Function(SocialLoginEvent) _then;
}

/// @nodoc
abstract class $SocialLoginCopyWith<$Res> {
  factory $SocialLoginCopyWith(
          SocialLogin value, $Res Function(SocialLogin) then) =
      _$SocialLoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocialLoginCopyWithImpl<$Res>
    extends _$SocialLoginEventCopyWithImpl<$Res>
    implements $SocialLoginCopyWith<$Res> {
  _$SocialLoginCopyWithImpl(
      SocialLogin _value, $Res Function(SocialLogin) _then)
      : super(_value, (v) => _then(v as SocialLogin));

  @override
  SocialLogin get _value => super._value as SocialLogin;
}

/// @nodoc

class _$SocialLogin implements SocialLogin {
  const _$SocialLogin();

  @override
  String toString() {
    return 'SocialLoginEvent.socialLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SocialLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() socialLogin,
  }) {
    return socialLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? socialLogin,
  }) {
    return socialLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? socialLogin,
    required TResult orElse(),
  }) {
    if (socialLogin != null) {
      return socialLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialLogin value) socialLogin,
  }) {
    return socialLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SocialLogin value)? socialLogin,
  }) {
    return socialLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLogin value)? socialLogin,
    required TResult orElse(),
  }) {
    if (socialLogin != null) {
      return socialLogin(this);
    }
    return orElse();
  }
}

abstract class SocialLogin implements SocialLoginEvent {
  const factory SocialLogin() = _$SocialLogin;
}
