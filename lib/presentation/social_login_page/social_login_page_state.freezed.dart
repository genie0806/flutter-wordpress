// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_login_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SocialLoginPageStateTearOff {
  const _$SocialLoginPageStateTearOff();

  _SocialLoginPageState call({bool? googleLoginState}) {
    return _SocialLoginPageState(
      googleLoginState: googleLoginState,
    );
  }
}

/// @nodoc
const $SocialLoginPageState = _$SocialLoginPageStateTearOff();

/// @nodoc
mixin _$SocialLoginPageState {
  bool? get googleLoginState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocialLoginPageStateCopyWith<SocialLoginPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLoginPageStateCopyWith<$Res> {
  factory $SocialLoginPageStateCopyWith(SocialLoginPageState value,
          $Res Function(SocialLoginPageState) then) =
      _$SocialLoginPageStateCopyWithImpl<$Res>;
  $Res call({bool? googleLoginState});
}

/// @nodoc
class _$SocialLoginPageStateCopyWithImpl<$Res>
    implements $SocialLoginPageStateCopyWith<$Res> {
  _$SocialLoginPageStateCopyWithImpl(this._value, this._then);

  final SocialLoginPageState _value;
  // ignore: unused_field
  final $Res Function(SocialLoginPageState) _then;

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
abstract class _$SocialLoginPageStateCopyWith<$Res>
    implements $SocialLoginPageStateCopyWith<$Res> {
  factory _$SocialLoginPageStateCopyWith(_SocialLoginPageState value,
          $Res Function(_SocialLoginPageState) then) =
      __$SocialLoginPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool? googleLoginState});
}

/// @nodoc
class __$SocialLoginPageStateCopyWithImpl<$Res>
    extends _$SocialLoginPageStateCopyWithImpl<$Res>
    implements _$SocialLoginPageStateCopyWith<$Res> {
  __$SocialLoginPageStateCopyWithImpl(
      _SocialLoginPageState _value, $Res Function(_SocialLoginPageState) _then)
      : super(_value, (v) => _then(v as _SocialLoginPageState));

  @override
  _SocialLoginPageState get _value => super._value as _SocialLoginPageState;

  @override
  $Res call({
    Object? googleLoginState = freezed,
  }) {
    return _then(_SocialLoginPageState(
      googleLoginState: googleLoginState == freezed
          ? _value.googleLoginState
          : googleLoginState // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_SocialLoginPageState implements _SocialLoginPageState {
  _$_SocialLoginPageState({this.googleLoginState});

  @override
  final bool? googleLoginState;

  @override
  String toString() {
    return 'SocialLoginPageState(googleLoginState: $googleLoginState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialLoginPageState &&
            const DeepCollectionEquality()
                .equals(other.googleLoginState, googleLoginState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(googleLoginState));

  @JsonKey(ignore: true)
  @override
  _$SocialLoginPageStateCopyWith<_SocialLoginPageState> get copyWith =>
      __$SocialLoginPageStateCopyWithImpl<_SocialLoginPageState>(
          this, _$identity);
}

abstract class _SocialLoginPageState implements SocialLoginPageState {
  factory _SocialLoginPageState({bool? googleLoginState}) =
      _$_SocialLoginPageState;

  @override
  bool? get googleLoginState;
  @override
  @JsonKey(ignore: true)
  _$SocialLoginPageStateCopyWith<_SocialLoginPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
