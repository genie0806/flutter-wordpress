// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_me_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserMeStateTearOff {
  const _$UserMeStateTearOff();

  _UserMeState call(
      {UserMeModel? model, String username = "", String password = ""}) {
    return _UserMeState(
      model: model,
      username: username,
      password: password,
    );
  }
}

/// @nodoc
const $UserMeState = _$UserMeStateTearOff();

/// @nodoc
mixin _$UserMeState {
  UserMeModel? get model => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserMeStateCopyWith<UserMeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMeStateCopyWith<$Res> {
  factory $UserMeStateCopyWith(
          UserMeState value, $Res Function(UserMeState) then) =
      _$UserMeStateCopyWithImpl<$Res>;
  $Res call({UserMeModel? model, String username, String password});

  $UserMeModelCopyWith<$Res>? get model;
}

/// @nodoc
class _$UserMeStateCopyWithImpl<$Res> implements $UserMeStateCopyWith<$Res> {
  _$UserMeStateCopyWithImpl(this._value, this._then);

  final UserMeState _value;
  // ignore: unused_field
  final $Res Function(UserMeState) _then;

  @override
  $Res call({
    Object? model = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UserMeModel?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserMeModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $UserMeModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc
abstract class _$UserMeStateCopyWith<$Res>
    implements $UserMeStateCopyWith<$Res> {
  factory _$UserMeStateCopyWith(
          _UserMeState value, $Res Function(_UserMeState) then) =
      __$UserMeStateCopyWithImpl<$Res>;
  @override
  $Res call({UserMeModel? model, String username, String password});

  @override
  $UserMeModelCopyWith<$Res>? get model;
}

/// @nodoc
class __$UserMeStateCopyWithImpl<$Res> extends _$UserMeStateCopyWithImpl<$Res>
    implements _$UserMeStateCopyWith<$Res> {
  __$UserMeStateCopyWithImpl(
      _UserMeState _value, $Res Function(_UserMeState) _then)
      : super(_value, (v) => _then(v as _UserMeState));

  @override
  _UserMeState get _value => super._value as _UserMeState;

  @override
  $Res call({
    Object? model = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_UserMeState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UserMeModel?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserMeState implements _UserMeState {
  _$_UserMeState({this.model, this.username = "", this.password = ""});

  @override
  final UserMeModel? model;
  @JsonKey()
  @override
  final String username;
  @JsonKey()
  @override
  final String password;

  @override
  String toString() {
    return 'UserMeState(model: $model, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserMeState &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$UserMeStateCopyWith<_UserMeState> get copyWith =>
      __$UserMeStateCopyWithImpl<_UserMeState>(this, _$identity);
}

abstract class _UserMeState implements UserMeState {
  factory _UserMeState({UserMeModel? model, String username, String password}) =
      _$_UserMeState;

  @override
  UserMeModel? get model;
  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$UserMeStateCopyWith<_UserMeState> get copyWith =>
      throw _privateConstructorUsedError;
}
