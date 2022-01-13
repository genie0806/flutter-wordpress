// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateUserStateTearOff {
  const _$CreateUserStateTearOff();

  _CreateUserState call(
      {required CreateUserModel userModel,
      bool hidePassword = true,
      bool hideConfirmPassword = true}) {
    return _CreateUserState(
      userModel: userModel,
      hidePassword: hidePassword,
      hideConfirmPassword: hideConfirmPassword,
    );
  }
}

/// @nodoc
const $CreateUserState = _$CreateUserStateTearOff();

/// @nodoc
mixin _$CreateUserState {
  CreateUserModel get userModel => throw _privateConstructorUsedError;
  bool get hidePassword => throw _privateConstructorUsedError;
  bool get hideConfirmPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateUserStateCopyWith<CreateUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserStateCopyWith<$Res> {
  factory $CreateUserStateCopyWith(
          CreateUserState value, $Res Function(CreateUserState) then) =
      _$CreateUserStateCopyWithImpl<$Res>;
  $Res call(
      {CreateUserModel userModel, bool hidePassword, bool hideConfirmPassword});

  $CreateUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$CreateUserStateCopyWithImpl<$Res>
    implements $CreateUserStateCopyWith<$Res> {
  _$CreateUserStateCopyWithImpl(this._value, this._then);

  final CreateUserState _value;
  // ignore: unused_field
  final $Res Function(CreateUserState) _then;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? hidePassword = freezed,
    Object? hideConfirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as CreateUserModel,
      hidePassword: hidePassword == freezed
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      hideConfirmPassword: hideConfirmPassword == freezed
          ? _value.hideConfirmPassword
          : hideConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CreateUserModelCopyWith<$Res> get userModel {
    return $CreateUserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc
abstract class _$CreateUserStateCopyWith<$Res>
    implements $CreateUserStateCopyWith<$Res> {
  factory _$CreateUserStateCopyWith(
          _CreateUserState value, $Res Function(_CreateUserState) then) =
      __$CreateUserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CreateUserModel userModel, bool hidePassword, bool hideConfirmPassword});

  @override
  $CreateUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$CreateUserStateCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res>
    implements _$CreateUserStateCopyWith<$Res> {
  __$CreateUserStateCopyWithImpl(
      _CreateUserState _value, $Res Function(_CreateUserState) _then)
      : super(_value, (v) => _then(v as _CreateUserState));

  @override
  _CreateUserState get _value => super._value as _CreateUserState;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? hidePassword = freezed,
    Object? hideConfirmPassword = freezed,
  }) {
    return _then(_CreateUserState(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as CreateUserModel,
      hidePassword: hidePassword == freezed
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      hideConfirmPassword: hideConfirmPassword == freezed
          ? _value.hideConfirmPassword
          : hideConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateUserState implements _CreateUserState {
  _$_CreateUserState(
      {required this.userModel,
      this.hidePassword = true,
      this.hideConfirmPassword = true});

  @override
  final CreateUserModel userModel;
  @JsonKey()
  @override
  final bool hidePassword;
  @JsonKey()
  @override
  final bool hideConfirmPassword;

  @override
  String toString() {
    return 'CreateUserState(userModel: $userModel, hidePassword: $hidePassword, hideConfirmPassword: $hideConfirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateUserState &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality()
                .equals(other.hidePassword, hidePassword) &&
            const DeepCollectionEquality()
                .equals(other.hideConfirmPassword, hideConfirmPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(hidePassword),
      const DeepCollectionEquality().hash(hideConfirmPassword));

  @JsonKey(ignore: true)
  @override
  _$CreateUserStateCopyWith<_CreateUserState> get copyWith =>
      __$CreateUserStateCopyWithImpl<_CreateUserState>(this, _$identity);
}

abstract class _CreateUserState implements CreateUserState {
  factory _CreateUserState(
      {required CreateUserModel userModel,
      bool hidePassword,
      bool hideConfirmPassword}) = _$_CreateUserState;

  @override
  CreateUserModel get userModel;
  @override
  bool get hidePassword;
  @override
  bool get hideConfirmPassword;
  @override
  @JsonKey(ignore: true)
  _$CreateUserStateCopyWith<_CreateUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
