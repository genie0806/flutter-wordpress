// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_page_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostPageEventTearOff {
  const _$PostPageEventTearOff();

  Showsnackbar showSnackBar(String message) {
    return Showsnackbar(
      message,
    );
  }

  ReloadPage reloadPage() {
    return const ReloadPage();
  }
}

/// @nodoc
const $PostPageEvent = _$PostPageEventTearOff();

/// @nodoc
mixin _$PostPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function() reloadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? reloadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? reloadPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Showsnackbar value) showSnackBar,
    required TResult Function(ReloadPage value) reloadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Showsnackbar value)? showSnackBar,
    TResult Function(ReloadPage value)? reloadPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Showsnackbar value)? showSnackBar,
    TResult Function(ReloadPage value)? reloadPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPageEventCopyWith<$Res> {
  factory $PostPageEventCopyWith(
          PostPageEvent value, $Res Function(PostPageEvent) then) =
      _$PostPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostPageEventCopyWithImpl<$Res>
    implements $PostPageEventCopyWith<$Res> {
  _$PostPageEventCopyWithImpl(this._value, this._then);

  final PostPageEvent _value;
  // ignore: unused_field
  final $Res Function(PostPageEvent) _then;
}

/// @nodoc
abstract class $ShowsnackbarCopyWith<$Res> {
  factory $ShowsnackbarCopyWith(
          Showsnackbar value, $Res Function(Showsnackbar) then) =
      _$ShowsnackbarCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ShowsnackbarCopyWithImpl<$Res> extends _$PostPageEventCopyWithImpl<$Res>
    implements $ShowsnackbarCopyWith<$Res> {
  _$ShowsnackbarCopyWithImpl(
      Showsnackbar _value, $Res Function(Showsnackbar) _then)
      : super(_value, (v) => _then(v as Showsnackbar));

  @override
  Showsnackbar get _value => super._value as Showsnackbar;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Showsnackbar(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Showsnackbar implements Showsnackbar {
  const _$Showsnackbar(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PostPageEvent.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Showsnackbar &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ShowsnackbarCopyWith<Showsnackbar> get copyWith =>
      _$ShowsnackbarCopyWithImpl<Showsnackbar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function() reloadPage,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? reloadPage,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? reloadPage,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Showsnackbar value) showSnackBar,
    required TResult Function(ReloadPage value) reloadPage,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Showsnackbar value)? showSnackBar,
    TResult Function(ReloadPage value)? reloadPage,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Showsnackbar value)? showSnackBar,
    TResult Function(ReloadPage value)? reloadPage,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class Showsnackbar implements PostPageEvent {
  const factory Showsnackbar(String message) = _$Showsnackbar;

  String get message;
  @JsonKey(ignore: true)
  $ShowsnackbarCopyWith<Showsnackbar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReloadPageCopyWith<$Res> {
  factory $ReloadPageCopyWith(
          ReloadPage value, $Res Function(ReloadPage) then) =
      _$ReloadPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReloadPageCopyWithImpl<$Res> extends _$PostPageEventCopyWithImpl<$Res>
    implements $ReloadPageCopyWith<$Res> {
  _$ReloadPageCopyWithImpl(ReloadPage _value, $Res Function(ReloadPage) _then)
      : super(_value, (v) => _then(v as ReloadPage));

  @override
  ReloadPage get _value => super._value as ReloadPage;
}

/// @nodoc

class _$ReloadPage implements ReloadPage {
  const _$ReloadPage();

  @override
  String toString() {
    return 'PostPageEvent.reloadPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReloadPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function() reloadPage,
  }) {
    return reloadPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? reloadPage,
  }) {
    return reloadPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? reloadPage,
    required TResult orElse(),
  }) {
    if (reloadPage != null) {
      return reloadPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Showsnackbar value) showSnackBar,
    required TResult Function(ReloadPage value) reloadPage,
  }) {
    return reloadPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Showsnackbar value)? showSnackBar,
    TResult Function(ReloadPage value)? reloadPage,
  }) {
    return reloadPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Showsnackbar value)? showSnackBar,
    TResult Function(ReloadPage value)? reloadPage,
    required TResult orElse(),
  }) {
    if (reloadPage != null) {
      return reloadPage(this);
    }
    return orElse();
  }
}

abstract class ReloadPage implements PostPageEvent {
  const factory ReloadPage() = _$ReloadPage;
}
