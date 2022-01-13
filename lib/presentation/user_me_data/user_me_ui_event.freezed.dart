// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_me_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserMeUiEventTearOff {
  const _$UserMeUiEventTearOff();

  ShowToast showToast(String message) {
    return ShowToast(
      message,
    );
  }
}

/// @nodoc
const $UserMeUiEvent = _$UserMeUiEventTearOff();

/// @nodoc
mixin _$UserMeUiEvent {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowToast value) showToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserMeUiEventCopyWith<UserMeUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMeUiEventCopyWith<$Res> {
  factory $UserMeUiEventCopyWith(
          UserMeUiEvent value, $Res Function(UserMeUiEvent) then) =
      _$UserMeUiEventCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$UserMeUiEventCopyWithImpl<$Res>
    implements $UserMeUiEventCopyWith<$Res> {
  _$UserMeUiEventCopyWithImpl(this._value, this._then);

  final UserMeUiEvent _value;
  // ignore: unused_field
  final $Res Function(UserMeUiEvent) _then;

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
abstract class $ShowToastCopyWith<$Res>
    implements $UserMeUiEventCopyWith<$Res> {
  factory $ShowToastCopyWith(ShowToast value, $Res Function(ShowToast) then) =
      _$ShowToastCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ShowToastCopyWithImpl<$Res> extends _$UserMeUiEventCopyWithImpl<$Res>
    implements $ShowToastCopyWith<$Res> {
  _$ShowToastCopyWithImpl(ShowToast _value, $Res Function(ShowToast) _then)
      : super(_value, (v) => _then(v as ShowToast));

  @override
  ShowToast get _value => super._value as ShowToast;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ShowToast(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowToast implements ShowToast {
  const _$ShowToast(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserMeUiEvent.showToast(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowToast &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ShowToastCopyWith<ShowToast> get copyWith =>
      _$ShowToastCopyWithImpl<ShowToast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showToast,
  }) {
    return showToast(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showToast,
  }) {
    return showToast?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showToast,
    required TResult orElse(),
  }) {
    if (showToast != null) {
      return showToast(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowToast value) showToast,
  }) {
    return showToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
  }) {
    return showToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
    required TResult orElse(),
  }) {
    if (showToast != null) {
      return showToast(this);
    }
    return orElse();
  }
}

abstract class ShowToast implements UserMeUiEvent {
  const factory ShowToast(String message) = _$ShowToast;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $ShowToastCopyWith<ShowToast> get copyWith =>
      throw _privateConstructorUsedError;
}
