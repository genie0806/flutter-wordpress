// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_login_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SocialLoginUiEventTearOff {
  const _$SocialLoginUiEventTearOff();

  SocialLoginSuccessToast loginSuccessToast(bool message) {
    return SocialLoginSuccessToast(
      message,
    );
  }

  SocialLoginErrorToast loginErrorToast(bool message) {
    return SocialLoginErrorToast(
      message,
    );
  }
}

/// @nodoc
const $SocialLoginUiEvent = _$SocialLoginUiEventTearOff();

/// @nodoc
mixin _$SocialLoginUiEvent {
  bool get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool message) loginSuccessToast,
    required TResult Function(bool message) loginErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool message)? loginSuccessToast,
    TResult Function(bool message)? loginErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool message)? loginSuccessToast,
    TResult Function(bool message)? loginErrorToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialLoginSuccessToast value) loginSuccessToast,
    required TResult Function(SocialLoginErrorToast value) loginErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SocialLoginSuccessToast value)? loginSuccessToast,
    TResult Function(SocialLoginErrorToast value)? loginErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLoginSuccessToast value)? loginSuccessToast,
    TResult Function(SocialLoginErrorToast value)? loginErrorToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocialLoginUiEventCopyWith<SocialLoginUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLoginUiEventCopyWith<$Res> {
  factory $SocialLoginUiEventCopyWith(
          SocialLoginUiEvent value, $Res Function(SocialLoginUiEvent) then) =
      _$SocialLoginUiEventCopyWithImpl<$Res>;
  $Res call({bool message});
}

/// @nodoc
class _$SocialLoginUiEventCopyWithImpl<$Res>
    implements $SocialLoginUiEventCopyWith<$Res> {
  _$SocialLoginUiEventCopyWithImpl(this._value, this._then);

  final SocialLoginUiEvent _value;
  // ignore: unused_field
  final $Res Function(SocialLoginUiEvent) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $SocialLoginSuccessToastCopyWith<$Res>
    implements $SocialLoginUiEventCopyWith<$Res> {
  factory $SocialLoginSuccessToastCopyWith(SocialLoginSuccessToast value,
          $Res Function(SocialLoginSuccessToast) then) =
      _$SocialLoginSuccessToastCopyWithImpl<$Res>;
  @override
  $Res call({bool message});
}

/// @nodoc
class _$SocialLoginSuccessToastCopyWithImpl<$Res>
    extends _$SocialLoginUiEventCopyWithImpl<$Res>
    implements $SocialLoginSuccessToastCopyWith<$Res> {
  _$SocialLoginSuccessToastCopyWithImpl(SocialLoginSuccessToast _value,
      $Res Function(SocialLoginSuccessToast) _then)
      : super(_value, (v) => _then(v as SocialLoginSuccessToast));

  @override
  SocialLoginSuccessToast get _value => super._value as SocialLoginSuccessToast;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(SocialLoginSuccessToast(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SocialLoginSuccessToast implements SocialLoginSuccessToast {
  const _$SocialLoginSuccessToast(this.message);

  @override
  final bool message;

  @override
  String toString() {
    return 'SocialLoginUiEvent.loginSuccessToast(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocialLoginSuccessToast &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $SocialLoginSuccessToastCopyWith<SocialLoginSuccessToast> get copyWith =>
      _$SocialLoginSuccessToastCopyWithImpl<SocialLoginSuccessToast>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool message) loginSuccessToast,
    required TResult Function(bool message) loginErrorToast,
  }) {
    return loginSuccessToast(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool message)? loginSuccessToast,
    TResult Function(bool message)? loginErrorToast,
  }) {
    return loginSuccessToast?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool message)? loginSuccessToast,
    TResult Function(bool message)? loginErrorToast,
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
    required TResult Function(SocialLoginSuccessToast value) loginSuccessToast,
    required TResult Function(SocialLoginErrorToast value) loginErrorToast,
  }) {
    return loginSuccessToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SocialLoginSuccessToast value)? loginSuccessToast,
    TResult Function(SocialLoginErrorToast value)? loginErrorToast,
  }) {
    return loginSuccessToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLoginSuccessToast value)? loginSuccessToast,
    TResult Function(SocialLoginErrorToast value)? loginErrorToast,
    required TResult orElse(),
  }) {
    if (loginSuccessToast != null) {
      return loginSuccessToast(this);
    }
    return orElse();
  }
}

abstract class SocialLoginSuccessToast implements SocialLoginUiEvent {
  const factory SocialLoginSuccessToast(bool message) =
      _$SocialLoginSuccessToast;

  @override
  bool get message;
  @override
  @JsonKey(ignore: true)
  $SocialLoginSuccessToastCopyWith<SocialLoginSuccessToast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLoginErrorToastCopyWith<$Res>
    implements $SocialLoginUiEventCopyWith<$Res> {
  factory $SocialLoginErrorToastCopyWith(SocialLoginErrorToast value,
          $Res Function(SocialLoginErrorToast) then) =
      _$SocialLoginErrorToastCopyWithImpl<$Res>;
  @override
  $Res call({bool message});
}

/// @nodoc
class _$SocialLoginErrorToastCopyWithImpl<$Res>
    extends _$SocialLoginUiEventCopyWithImpl<$Res>
    implements $SocialLoginErrorToastCopyWith<$Res> {
  _$SocialLoginErrorToastCopyWithImpl(
      SocialLoginErrorToast _value, $Res Function(SocialLoginErrorToast) _then)
      : super(_value, (v) => _then(v as SocialLoginErrorToast));

  @override
  SocialLoginErrorToast get _value => super._value as SocialLoginErrorToast;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(SocialLoginErrorToast(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SocialLoginErrorToast implements SocialLoginErrorToast {
  const _$SocialLoginErrorToast(this.message);

  @override
  final bool message;

  @override
  String toString() {
    return 'SocialLoginUiEvent.loginErrorToast(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocialLoginErrorToast &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $SocialLoginErrorToastCopyWith<SocialLoginErrorToast> get copyWith =>
      _$SocialLoginErrorToastCopyWithImpl<SocialLoginErrorToast>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool message) loginSuccessToast,
    required TResult Function(bool message) loginErrorToast,
  }) {
    return loginErrorToast(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool message)? loginSuccessToast,
    TResult Function(bool message)? loginErrorToast,
  }) {
    return loginErrorToast?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool message)? loginSuccessToast,
    TResult Function(bool message)? loginErrorToast,
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
    required TResult Function(SocialLoginSuccessToast value) loginSuccessToast,
    required TResult Function(SocialLoginErrorToast value) loginErrorToast,
  }) {
    return loginErrorToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SocialLoginSuccessToast value)? loginSuccessToast,
    TResult Function(SocialLoginErrorToast value)? loginErrorToast,
  }) {
    return loginErrorToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLoginSuccessToast value)? loginSuccessToast,
    TResult Function(SocialLoginErrorToast value)? loginErrorToast,
    required TResult orElse(),
  }) {
    if (loginErrorToast != null) {
      return loginErrorToast(this);
    }
    return orElse();
  }
}

abstract class SocialLoginErrorToast implements SocialLoginUiEvent {
  const factory SocialLoginErrorToast(bool message) = _$SocialLoginErrorToast;

  @override
  bool get message;
  @override
  @JsonKey(ignore: true)
  $SocialLoginErrorToastCopyWith<SocialLoginErrorToast> get copyWith =>
      throw _privateConstructorUsedError;
}
