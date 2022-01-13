// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_user_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateUserUiEventTearOff {
  const _$CreateUserUiEventTearOff();

  ShowSuccessToast showSuccessToast(String message) {
    return ShowSuccessToast(
      message,
    );
  }

  ShowErrorToast showErrorToast(String message) {
    return ShowErrorToast(
      message,
    );
  }
}

/// @nodoc
const $CreateUserUiEvent = _$CreateUserUiEventTearOff();

/// @nodoc
mixin _$CreateUserUiEvent {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSuccessToast,
    required TResult Function(String message) showErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSuccessToast,
    TResult Function(String message)? showErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSuccessToast,
    TResult Function(String message)? showErrorToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSuccessToast value) showSuccessToast,
    required TResult Function(ShowErrorToast value) showErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSuccessToast value)? showSuccessToast,
    TResult Function(ShowErrorToast value)? showErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSuccessToast value)? showSuccessToast,
    TResult Function(ShowErrorToast value)? showErrorToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateUserUiEventCopyWith<CreateUserUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserUiEventCopyWith<$Res> {
  factory $CreateUserUiEventCopyWith(
          CreateUserUiEvent value, $Res Function(CreateUserUiEvent) then) =
      _$CreateUserUiEventCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$CreateUserUiEventCopyWithImpl<$Res>
    implements $CreateUserUiEventCopyWith<$Res> {
  _$CreateUserUiEventCopyWithImpl(this._value, this._then);

  final CreateUserUiEvent _value;
  // ignore: unused_field
  final $Res Function(CreateUserUiEvent) _then;

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
abstract class $ShowSuccessToastCopyWith<$Res>
    implements $CreateUserUiEventCopyWith<$Res> {
  factory $ShowSuccessToastCopyWith(
          ShowSuccessToast value, $Res Function(ShowSuccessToast) then) =
      _$ShowSuccessToastCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ShowSuccessToastCopyWithImpl<$Res>
    extends _$CreateUserUiEventCopyWithImpl<$Res>
    implements $ShowSuccessToastCopyWith<$Res> {
  _$ShowSuccessToastCopyWithImpl(
      ShowSuccessToast _value, $Res Function(ShowSuccessToast) _then)
      : super(_value, (v) => _then(v as ShowSuccessToast));

  @override
  ShowSuccessToast get _value => super._value as ShowSuccessToast;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ShowSuccessToast(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSuccessToast implements ShowSuccessToast {
  const _$ShowSuccessToast(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CreateUserUiEvent.showSuccessToast(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowSuccessToast &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ShowSuccessToastCopyWith<ShowSuccessToast> get copyWith =>
      _$ShowSuccessToastCopyWithImpl<ShowSuccessToast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSuccessToast,
    required TResult Function(String message) showErrorToast,
  }) {
    return showSuccessToast(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSuccessToast,
    TResult Function(String message)? showErrorToast,
  }) {
    return showSuccessToast?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSuccessToast,
    TResult Function(String message)? showErrorToast,
    required TResult orElse(),
  }) {
    if (showSuccessToast != null) {
      return showSuccessToast(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSuccessToast value) showSuccessToast,
    required TResult Function(ShowErrorToast value) showErrorToast,
  }) {
    return showSuccessToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSuccessToast value)? showSuccessToast,
    TResult Function(ShowErrorToast value)? showErrorToast,
  }) {
    return showSuccessToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSuccessToast value)? showSuccessToast,
    TResult Function(ShowErrorToast value)? showErrorToast,
    required TResult orElse(),
  }) {
    if (showSuccessToast != null) {
      return showSuccessToast(this);
    }
    return orElse();
  }
}

abstract class ShowSuccessToast implements CreateUserUiEvent {
  const factory ShowSuccessToast(String message) = _$ShowSuccessToast;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $ShowSuccessToastCopyWith<ShowSuccessToast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowErrorToastCopyWith<$Res>
    implements $CreateUserUiEventCopyWith<$Res> {
  factory $ShowErrorToastCopyWith(
          ShowErrorToast value, $Res Function(ShowErrorToast) then) =
      _$ShowErrorToastCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ShowErrorToastCopyWithImpl<$Res>
    extends _$CreateUserUiEventCopyWithImpl<$Res>
    implements $ShowErrorToastCopyWith<$Res> {
  _$ShowErrorToastCopyWithImpl(
      ShowErrorToast _value, $Res Function(ShowErrorToast) _then)
      : super(_value, (v) => _then(v as ShowErrorToast));

  @override
  ShowErrorToast get _value => super._value as ShowErrorToast;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ShowErrorToast(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowErrorToast implements ShowErrorToast {
  const _$ShowErrorToast(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CreateUserUiEvent.showErrorToast(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowErrorToast &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ShowErrorToastCopyWith<ShowErrorToast> get copyWith =>
      _$ShowErrorToastCopyWithImpl<ShowErrorToast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSuccessToast,
    required TResult Function(String message) showErrorToast,
  }) {
    return showErrorToast(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSuccessToast,
    TResult Function(String message)? showErrorToast,
  }) {
    return showErrorToast?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSuccessToast,
    TResult Function(String message)? showErrorToast,
    required TResult orElse(),
  }) {
    if (showErrorToast != null) {
      return showErrorToast(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSuccessToast value) showSuccessToast,
    required TResult Function(ShowErrorToast value) showErrorToast,
  }) {
    return showErrorToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSuccessToast value)? showSuccessToast,
    TResult Function(ShowErrorToast value)? showErrorToast,
  }) {
    return showErrorToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSuccessToast value)? showSuccessToast,
    TResult Function(ShowErrorToast value)? showErrorToast,
    required TResult orElse(),
  }) {
    if (showErrorToast != null) {
      return showErrorToast(this);
    }
    return orElse();
  }
}

abstract class ShowErrorToast implements CreateUserUiEvent {
  const factory ShowErrorToast(String message) = _$ShowErrorToast;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $ShowErrorToastCopyWith<ShowErrorToast> get copyWith =>
      throw _privateConstructorUsedError;
}
