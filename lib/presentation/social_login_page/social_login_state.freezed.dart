// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SocialLoginStateTearOff {
  const _$SocialLoginStateTearOff();

  _SocialLoginState call({bool? googleLoginState}) {
    return _SocialLoginState(
      googleLoginState: googleLoginState,
    );
  }
}

/// @nodoc
const $SocialLoginState = _$SocialLoginStateTearOff();

/// @nodoc
mixin _$SocialLoginState {
  bool? get googleLoginState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocialLoginStateCopyWith<SocialLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLoginStateCopyWith<$Res> {
  factory $SocialLoginStateCopyWith(
          SocialLoginState value, $Res Function(SocialLoginState) then) =
      _$SocialLoginStateCopyWithImpl<$Res>;
  $Res call({bool? googleLoginState});
}

/// @nodoc
class _$SocialLoginStateCopyWithImpl<$Res>
    implements $SocialLoginStateCopyWith<$Res> {
  _$SocialLoginStateCopyWithImpl(this._value, this._then);

  final SocialLoginState _value;
  // ignore: unused_field
  final $Res Function(SocialLoginState) _then;

  @override
  $Res call({
    Object? googleLoginState = freezed,
  }) {
    return _then(_value.copyWith(
      googleLoginState: googleLoginState == freezed
          ? _value.googleLoginState
          : googleLoginState // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SocialLoginStateCopyWith<$Res>
    implements $SocialLoginStateCopyWith<$Res> {
  factory _$SocialLoginStateCopyWith(
          _SocialLoginState value, $Res Function(_SocialLoginState) then) =
      __$SocialLoginStateCopyWithImpl<$Res>;
  @override
  $Res call({bool? googleLoginState});
}

/// @nodoc
class __$SocialLoginStateCopyWithImpl<$Res>
    extends _$SocialLoginStateCopyWithImpl<$Res>
    implements _$SocialLoginStateCopyWith<$Res> {
  __$SocialLoginStateCopyWithImpl(
      _SocialLoginState _value, $Res Function(_SocialLoginState) _then)
      : super(_value, (v) => _then(v as _SocialLoginState));

  @override
  _SocialLoginState get _value => super._value as _SocialLoginState;

  @override
  $Res call({
    Object? googleLoginState = freezed,
  }) {
    return _then(_SocialLoginState(
      googleLoginState: googleLoginState == freezed
          ? _value.googleLoginState
          : googleLoginState // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_SocialLoginState implements _SocialLoginState {
  _$_SocialLoginState({this.googleLoginState});

  @override
  final bool? googleLoginState;

  @override
  String toString() {
    return 'SocialLoginState(googleLoginState: $googleLoginState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialLoginState &&
            const DeepCollectionEquality()
                .equals(other.googleLoginState, googleLoginState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(googleLoginState));

  @JsonKey(ignore: true)
  @override
  _$SocialLoginStateCopyWith<_SocialLoginState> get copyWith =>
      __$SocialLoginStateCopyWithImpl<_SocialLoginState>(this, _$identity);
}

abstract class _SocialLoginState implements SocialLoginState {
  factory _SocialLoginState({bool? googleLoginState}) = _$_SocialLoginState;

  @override
  bool? get googleLoginState;
  @override
  @JsonKey(ignore: true)
  _$SocialLoginStateCopyWith<_SocialLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
