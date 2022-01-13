// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_user_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginUserUiEventTearOff {
  const _$LoginUserUiEventTearOff();

  LoginSuccessToast loginSuccessToast(String message) {
    return LoginSuccessToast(
      message,
    );
  }

  LoginErrorToast loginErrorToast(String message) {
    return LoginErrorToast(
      message,
    );
  }
}

/// @nodoc
const $LoginUserUiEvent = _$LoginUserUiEventTearOff();

/// @nodoc
mixin _$LoginUserUiEvent {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loginSuccessToast,
    required TResult Function(String message) loginErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? loginSuccessToast,
    TResult Function(String message)? loginErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loginSuccessToast,
    TResult Function(String message)? loginErrorToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSuccessToast value) loginSuccessToast,
    required TResult Function(LoginErrorToast value) loginErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginSuccessToast value)? loginSuccessToast,
    TResult Function(LoginErrorToast value)? loginErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSuccessToast value)? loginSuccessToast,
    TResult Function(LoginErrorToast value)? loginErrorToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginUserUiEventCopyWith<LoginUserUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserUiEventCopyWith<$Res> {
  factory $LoginUserUiEventCopyWith(
          LoginUserUiEvent value, $Res Function(LoginUserUiEvent) then) =
      _$LoginUserUiEventCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LoginUserUiEventCopyWithImpl<$Res>
    implements $LoginUserUiEventCopyWith<$Res> {
  _$LoginUserUiEventCopyWithImpl(this._value, this._then);

  final LoginUserUiEvent _value;
  // ignore: unused_field
  final $Res Function(LoginUserUiEvent) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $LoginSuccessToastCopyWith<$Res>
    implements $LoginUserUiEventCopyWith<$Res> {
  factory $LoginSuccessToastCopyWith(
          LoginSuccessToast value, $Res Function(LoginSuccessToast) then) =
      _$LoginSuccessToastCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$LoginSuccessToastCopyWithImpl<$Res>
    extends _$LoginUserUiEventCopyWithImpl<$Res>
    implements $LoginSuccessToastCopyWith<$Res> {
  _$LoginSuccessToastCopyWithImpl(
      LoginSuccessToast _value, $Res Function(LoginSuccessToast) _then)
      : super(_value, (v) => _then(v as LoginSuccessToast));

  @override
  LoginSuccessToast get _value => super._value as LoginSuccessToast;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LoginSuccessToast(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginSuccessToast implements LoginSuccessToast {
  const _$LoginSuccessToast(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginUserUiEvent.loginSuccessToast(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginSuccessToast &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $LoginSuccessToastCopyWith<LoginSuccessToast> get copyWith =>
      _$LoginSuccessToastCopyWithImpl<LoginSuccessToast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loginSuccessToast,
    required TResult Function(String message) loginErrorToast,
  }) {
    return loginSuccessToast(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? loginSuccessToast,
    TResult Function(String message)? loginErrorToast,
  }) {
    return loginSuccessToast?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loginSuccessToast,
    TResult Function(String message)? loginErrorToast,
    required TResult orElse(),
  }) {
    if (loginSuccessToast != null) {
      return loginSuccessToast(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSuccessToast value) loginSuccessToast,
    required TResult Function(LoginErrorToast value) loginErrorToast,
  }) {
    return loginSuccessToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginSuccessToast value)? loginSuccessToast,
    TResult Function(LoginErrorToast value)? loginErrorToast,
  }) {
    return loginSuccessToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSuccessToast value)? loginSuccessToast,
    TResult Function(LoginErrorToast value)? loginErrorToast,
    required TResult orElse(),
  }) {
    if (loginSuccessToast != null) {
      return loginSuccessToast(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessToast implements LoginUserUiEvent {
  const factory LoginSuccessToast(String message) = _$LoginSuccessToast;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $LoginSuccessToastCopyWith<LoginSuccessToast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorToastCopyWith<$Res>
    implements $LoginUserUiEventCopyWith<$Res> {
  factory $LoginErrorToastCopyWith(
          LoginErrorToast value, $Res Function(LoginErrorToast) then) =
      _$LoginErrorToastCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$LoginErrorToastCopyWithImpl<$Res>
    extends _$LoginUserUiEventCopyWithImpl<$Res>
    implements $LoginErrorToastCopyWith<$Res> {
  _$LoginErrorToastCopyWithImpl(
      LoginErrorToast _value, $Res Function(LoginErrorToast) _then)
      : super(_value, (v) => _then(v as LoginErrorToast));

  @override
  LoginErrorToast get _value => super._value as LoginErrorToast;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LoginErrorToast(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorToast implements LoginErrorToast {
  const _$LoginErrorToast(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginUserUiEvent.loginErrorToast(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginErrorToast &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $LoginErrorToastCopyWith<LoginErrorToast> get copyWith =>
      _$LoginErrorToastCopyWithImpl<LoginErrorToast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loginSuccessToast,
    required TResult Function(String message) loginErrorToast,
  }) {
    return loginErrorToast(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? loginSuccessToast,
    TResult Function(String message)? loginErrorToast,
  }) {
    return loginErrorToast?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loginSuccessToast,
    TResult Function(String message)? loginErrorToast,
    required TResult orElse(),
  }) {
    if (loginErrorToast != null) {
      return loginErrorToast(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSuccessToast value) loginSuccessToast,
    required TResult Function(LoginErrorToast value) loginErrorToast,
  }) {
    return loginErrorToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginSuccessToast value)? loginSuccessToast,
    TResult Function(LoginErrorToast value)? loginErrorToast,
  }) {
    return loginErrorToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSuccessToast value)? loginSuccessToast,
    TResult Function(LoginErrorToast value)? loginErrorToast,
    required TResult orElse(),
  }) {
    if (loginErrorToast != null) {
      return loginErrorToast(this);
    }
    return orElse();
  }
}

abstract class LoginErrorToast implements LoginUserUiEvent {
  const factory LoginErrorToast(String message) = _$LoginErrorToast;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $LoginErrorToastCopyWith<LoginErrorToast> get copyWith =>
      throw _privateConstructorUsedError;
}
