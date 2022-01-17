// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentPageUiEventTearOff {
  const _$CommentPageUiEventTearOff();

  ShowToast showToast(String message) {
    return ShowToast(
      message,
    );
  }

  RegisterSuccessToast registerSuccessToast(String message) {
    return RegisterSuccessToast(
      message,
    );
  }

  RegisterErrorToast registerErrorToast(String message) {
    return RegisterErrorToast(
      message,
    );
  }
}

/// @nodoc
const $CommentPageUiEvent = _$CommentPageUiEventTearOff();

/// @nodoc
mixin _$CommentPageUiEvent {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showToast,
    required TResult Function(String message) registerSuccessToast,
    required TResult Function(String message) registerErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showToast,
    TResult Function(String message)? registerSuccessToast,
    TResult Function(String message)? registerErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showToast,
    TResult Function(String message)? registerSuccessToast,
    TResult Function(String message)? registerErrorToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowToast value) showToast,
    required TResult Function(RegisterSuccessToast value) registerSuccessToast,
    required TResult Function(RegisterErrorToast value) registerErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
    TResult Function(RegisterSuccessToast value)? registerSuccessToast,
    TResult Function(RegisterErrorToast value)? registerErrorToast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
    TResult Function(RegisterSuccessToast value)? registerSuccessToast,
    TResult Function(RegisterErrorToast value)? registerErrorToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentPageUiEventCopyWith<CommentPageUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPageUiEventCopyWith<$Res> {
  factory $CommentPageUiEventCopyWith(
          CommentPageUiEvent value, $Res Function(CommentPageUiEvent) then) =
      _$CommentPageUiEventCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$CommentPageUiEventCopyWithImpl<$Res>
    implements $CommentPageUiEventCopyWith<$Res> {
  _$CommentPageUiEventCopyWithImpl(this._value, this._then);

  final CommentPageUiEvent _value;
  // ignore: unused_field
  final $Res Function(CommentPageUiEvent) _then;

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
    implements $CommentPageUiEventCopyWith<$Res> {
  factory $ShowToastCopyWith(ShowToast value, $Res Function(ShowToast) then) =
      _$ShowToastCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ShowToastCopyWithImpl<$Res>
    extends _$CommentPageUiEventCopyWithImpl<$Res>
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
    return 'CommentPageUiEvent.showToast(message: $message)';
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
    required TResult Function(String message) registerSuccessToast,
    required TResult Function(String message) registerErrorToast,
  }) {
    return showToast(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showToast,
    TResult Function(String message)? registerSuccessToast,
    TResult Function(String message)? registerErrorToast,
  }) {
    return showToast?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showToast,
    TResult Function(String message)? registerSuccessToast,
    TResult Function(String message)? registerErrorToast,
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
    required TResult Function(RegisterSuccessToast value) registerSuccessToast,
    required TResult Function(RegisterErrorToast value) registerErrorToast,
  }) {
    return showToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
    TResult Function(RegisterSuccessToast value)? registerSuccessToast,
    TResult Function(RegisterErrorToast value)? registerErrorToast,
  }) {
    return showToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
    TResult Function(RegisterSuccessToast value)? registerSuccessToast,
    TResult Function(RegisterErrorToast value)? registerErrorToast,
    required TResult orElse(),
  }) {
    if (showToast != null) {
      return showToast(this);
    }
    return orElse();
  }
}

abstract class ShowToast implements CommentPageUiEvent {
  const factory ShowToast(String message) = _$ShowToast;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $ShowToastCopyWith<ShowToast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterSuccessToastCopyWith<$Res>
    implements $CommentPageUiEventCopyWith<$Res> {
  factory $RegisterSuccessToastCopyWith(RegisterSuccessToast value,
          $Res Function(RegisterSuccessToast) then) =
      _$RegisterSuccessToastCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$RegisterSuccessToastCopyWithImpl<$Res>
    extends _$CommentPageUiEventCopyWithImpl<$Res>
    implements $RegisterSuccessToastCopyWith<$Res> {
  _$RegisterSuccessToastCopyWithImpl(
      RegisterSuccessToast _value, $Res Function(RegisterSuccessToast) _then)
      : super(_value, (v) => _then(v as RegisterSuccessToast));

  @override
  RegisterSuccessToast get _value => super._value as RegisterSuccessToast;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(RegisterSuccessToast(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterSuccessToast implements RegisterSuccessToast {
  const _$RegisterSuccessToast(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CommentPageUiEvent.registerSuccessToast(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterSuccessToast &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $RegisterSuccessToastCopyWith<RegisterSuccessToast> get copyWith =>
      _$RegisterSuccessToastCopyWithImpl<RegisterSuccessToast>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showToast,
    required TResult Function(String message) registerSuccessToast,
    required TResult Function(String message) registerErrorToast,
  }) {
    return registerSuccessToast(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showToast,
    TResult Function(String message)? registerSuccessToast,
    TResult Function(String message)? registerErrorToast,
  }) {
    return registerSuccessToast?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showToast,
    TResult Function(String message)? registerSuccessToast,
    TResult Function(String message)? registerErrorToast,
    required TResult orElse(),
  }) {
    if (registerSuccessToast != null) {
      return registerSuccessToast(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowToast value) showToast,
    required TResult Function(RegisterSuccessToast value) registerSuccessToast,
    required TResult Function(RegisterErrorToast value) registerErrorToast,
  }) {
    return registerSuccessToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
    TResult Function(RegisterSuccessToast value)? registerSuccessToast,
    TResult Function(RegisterErrorToast value)? registerErrorToast,
  }) {
    return registerSuccessToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
    TResult Function(RegisterSuccessToast value)? registerSuccessToast,
    TResult Function(RegisterErrorToast value)? registerErrorToast,
    required TResult orElse(),
  }) {
    if (registerSuccessToast != null) {
      return registerSuccessToast(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccessToast implements CommentPageUiEvent {
  const factory RegisterSuccessToast(String message) = _$RegisterSuccessToast;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $RegisterSuccessToastCopyWith<RegisterSuccessToast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterErrorToastCopyWith<$Res>
    implements $CommentPageUiEventCopyWith<$Res> {
  factory $RegisterErrorToastCopyWith(
          RegisterErrorToast value, $Res Function(RegisterErrorToast) then) =
      _$RegisterErrorToastCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$RegisterErrorToastCopyWithImpl<$Res>
    extends _$CommentPageUiEventCopyWithImpl<$Res>
    implements $RegisterErrorToastCopyWith<$Res> {
  _$RegisterErrorToastCopyWithImpl(
      RegisterErrorToast _value, $Res Function(RegisterErrorToast) _then)
      : super(_value, (v) => _then(v as RegisterErrorToast));

  @override
  RegisterErrorToast get _value => super._value as RegisterErrorToast;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(RegisterErrorToast(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterErrorToast implements RegisterErrorToast {
  const _$RegisterErrorToast(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CommentPageUiEvent.registerErrorToast(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterErrorToast &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $RegisterErrorToastCopyWith<RegisterErrorToast> get copyWith =>
      _$RegisterErrorToastCopyWithImpl<RegisterErrorToast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showToast,
    required TResult Function(String message) registerSuccessToast,
    required TResult Function(String message) registerErrorToast,
  }) {
    return registerErrorToast(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showToast,
    TResult Function(String message)? registerSuccessToast,
    TResult Function(String message)? registerErrorToast,
  }) {
    return registerErrorToast?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showToast,
    TResult Function(String message)? registerSuccessToast,
    TResult Function(String message)? registerErrorToast,
    required TResult orElse(),
  }) {
    if (registerErrorToast != null) {
      return registerErrorToast(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowToast value) showToast,
    required TResult Function(RegisterSuccessToast value) registerSuccessToast,
    required TResult Function(RegisterErrorToast value) registerErrorToast,
  }) {
    return registerErrorToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
    TResult Function(RegisterSuccessToast value)? registerSuccessToast,
    TResult Function(RegisterErrorToast value)? registerErrorToast,
  }) {
    return registerErrorToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowToast value)? showToast,
    TResult Function(RegisterSuccessToast value)? registerSuccessToast,
    TResult Function(RegisterErrorToast value)? registerErrorToast,
    required TResult orElse(),
  }) {
    if (registerErrorToast != null) {
      return registerErrorToast(this);
    }
    return orElse();
  }
}

abstract class RegisterErrorToast implements CommentPageUiEvent {
  const factory RegisterErrorToast(String message) = _$RegisterErrorToast;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $RegisterErrorToastCopyWith<RegisterErrorToast> get copyWith =>
      throw _privateConstructorUsedError;
}
