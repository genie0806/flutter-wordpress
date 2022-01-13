// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_me_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserMeEventTearOff {
  const _$UserMeEventTearOff();

  StoreProfileUser storeUsername(String username) {
    return StoreProfileUser(
      username,
    );
  }

  StoreProfilePassword storePassword(String password) {
    return StoreProfilePassword(
      password,
    );
  }

  GetProfileUser getProfileUser(String username, String password) {
    return GetProfileUser(
      username,
      password,
    );
  }
}

/// @nodoc
const $UserMeEvent = _$UserMeEventTearOff();

/// @nodoc
mixin _$UserMeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) storeUsername,
    required TResult Function(String password) storePassword,
    required TResult Function(String username, String password) getProfileUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? getProfileUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? getProfileUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreProfileUser value) storeUsername,
    required TResult Function(StoreProfilePassword value) storePassword,
    required TResult Function(GetProfileUser value) getProfileUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreProfileUser value)? storeUsername,
    TResult Function(StoreProfilePassword value)? storePassword,
    TResult Function(GetProfileUser value)? getProfileUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreProfileUser value)? storeUsername,
    TResult Function(StoreProfilePassword value)? storePassword,
    TResult Function(GetProfileUser value)? getProfileUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMeEventCopyWith<$Res> {
  factory $UserMeEventCopyWith(
          UserMeEvent value, $Res Function(UserMeEvent) then) =
      _$UserMeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserMeEventCopyWithImpl<$Res> implements $UserMeEventCopyWith<$Res> {
  _$UserMeEventCopyWithImpl(this._value, this._then);

  final UserMeEvent _value;
  // ignore: unused_field
  final $Res Function(UserMeEvent) _then;
}

/// @nodoc
abstract class $StoreProfileUserCopyWith<$Res> {
  factory $StoreProfileUserCopyWith(
          StoreProfileUser value, $Res Function(StoreProfileUser) then) =
      _$StoreProfileUserCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$StoreProfileUserCopyWithImpl<$Res>
    extends _$UserMeEventCopyWithImpl<$Res>
    implements $StoreProfileUserCopyWith<$Res> {
  _$StoreProfileUserCopyWithImpl(
      StoreProfileUser _value, $Res Function(StoreProfileUser) _then)
      : super(_value, (v) => _then(v as StoreProfileUser));

  @override
  StoreProfileUser get _value => super._value as StoreProfileUser;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(StoreProfileUser(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreProfileUser implements StoreProfileUser {
  const _$StoreProfileUser(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'UserMeEvent.storeUsername(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreProfileUser &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  $StoreProfileUserCopyWith<StoreProfileUser> get copyWith =>
      _$StoreProfileUserCopyWithImpl<StoreProfileUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) storeUsername,
    required TResult Function(String password) storePassword,
    required TResult Function(String username, String password) getProfileUser,
  }) {
    return storeUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? getProfileUser,
  }) {
    return storeUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? getProfileUser,
    required TResult orElse(),
  }) {
    if (storeUsername != null) {
      return storeUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreProfileUser value) storeUsername,
    required TResult Function(StoreProfilePassword value) storePassword,
    required TResult Function(GetProfileUser value) getProfileUser,
  }) {
    return storeUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreProfileUser value)? storeUsername,
    TResult Function(StoreProfilePassword value)? storePassword,
    TResult Function(GetProfileUser value)? getProfileUser,
  }) {
    return storeUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreProfileUser value)? storeUsername,
    TResult Function(StoreProfilePassword value)? storePassword,
    TResult Function(GetProfileUser value)? getProfileUser,
    required TResult orElse(),
  }) {
    if (storeUsername != null) {
      return storeUsername(this);
    }
    return orElse();
  }
}

abstract class StoreProfileUser implements UserMeEvent {
  const factory StoreProfileUser(String username) = _$StoreProfileUser;

  String get username;
  @JsonKey(ignore: true)
  $StoreProfileUserCopyWith<StoreProfileUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreProfilePasswordCopyWith<$Res> {
  factory $StoreProfilePasswordCopyWith(StoreProfilePassword value,
          $Res Function(StoreProfilePassword) then) =
      _$StoreProfilePasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$StoreProfilePasswordCopyWithImpl<$Res>
    extends _$UserMeEventCopyWithImpl<$Res>
    implements $StoreProfilePasswordCopyWith<$Res> {
  _$StoreProfilePasswordCopyWithImpl(
      StoreProfilePassword _value, $Res Function(StoreProfilePassword) _then)
      : super(_value, (v) => _then(v as StoreProfilePassword));

  @override
  StoreProfilePassword get _value => super._value as StoreProfilePassword;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(StoreProfilePassword(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreProfilePassword implements StoreProfilePassword {
  const _$StoreProfilePassword(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'UserMeEvent.storePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreProfilePassword &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $StoreProfilePasswordCopyWith<StoreProfilePassword> get copyWith =>
      _$StoreProfilePasswordCopyWithImpl<StoreProfilePassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) storeUsername,
    required TResult Function(String password) storePassword,
    required TResult Function(String username, String password) getProfileUser,
  }) {
    return storePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? getProfileUser,
  }) {
    return storePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? getProfileUser,
    required TResult orElse(),
  }) {
    if (storePassword != null) {
      return storePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreProfileUser value) storeUsername,
    required TResult Function(StoreProfilePassword value) storePassword,
    required TResult Function(GetProfileUser value) getProfileUser,
  }) {
    return storePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreProfileUser value)? storeUsername,
    TResult Function(StoreProfilePassword value)? storePassword,
    TResult Function(GetProfileUser value)? getProfileUser,
  }) {
    return storePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreProfileUser value)? storeUsername,
    TResult Function(StoreProfilePassword value)? storePassword,
    TResult Function(GetProfileUser value)? getProfileUser,
    required TResult orElse(),
  }) {
    if (storePassword != null) {
      return storePassword(this);
    }
    return orElse();
  }
}

abstract class StoreProfilePassword implements UserMeEvent {
  const factory StoreProfilePassword(String password) = _$StoreProfilePassword;

  String get password;
  @JsonKey(ignore: true)
  $StoreProfilePasswordCopyWith<StoreProfilePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileUserCopyWith<$Res> {
  factory $GetProfileUserCopyWith(
          GetProfileUser value, $Res Function(GetProfileUser) then) =
      _$GetProfileUserCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$GetProfileUserCopyWithImpl<$Res> extends _$UserMeEventCopyWithImpl<$Res>
    implements $GetProfileUserCopyWith<$Res> {
  _$GetProfileUserCopyWithImpl(
      GetProfileUser _value, $Res Function(GetProfileUser) _then)
      : super(_value, (v) => _then(v as GetProfileUser));

  @override
  GetProfileUser get _value => super._value as GetProfileUser;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(GetProfileUser(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProfileUser implements GetProfileUser {
  const _$GetProfileUser(this.username, this.password);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'UserMeEvent.getProfileUser(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProfileUser &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $GetProfileUserCopyWith<GetProfileUser> get copyWith =>
      _$GetProfileUserCopyWithImpl<GetProfileUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) storeUsername,
    required TResult Function(String password) storePassword,
    required TResult Function(String username, String password) getProfileUser,
  }) {
    return getProfileUser(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? getProfileUser,
  }) {
    return getProfileUser?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? storeUsername,
    TResult Function(String password)? storePassword,
    TResult Function(String username, String password)? getProfileUser,
    required TResult orElse(),
  }) {
    if (getProfileUser != null) {
      return getProfileUser(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreProfileUser value) storeUsername,
    required TResult Function(StoreProfilePassword value) storePassword,
    required TResult Function(GetProfileUser value) getProfileUser,
  }) {
    return getProfileUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreProfileUser value)? storeUsername,
    TResult Function(StoreProfilePassword value)? storePassword,
    TResult Function(GetProfileUser value)? getProfileUser,
  }) {
    return getProfileUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreProfileUser value)? storeUsername,
    TResult Function(StoreProfilePassword value)? storePassword,
    TResult Function(GetProfileUser value)? getProfileUser,
    required TResult orElse(),
  }) {
    if (getProfileUser != null) {
      return getProfileUser(this);
    }
    return orElse();
  }
}

abstract class GetProfileUser implements UserMeEvent {
  const factory GetProfileUser(String username, String password) =
      _$GetProfileUser;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  $GetProfileUserCopyWith<GetProfileUser> get copyWith =>
      throw _privateConstructorUsedError;
}
