// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialUserModel _$SocialUserModelFromJson(Map<String, dynamic> json) {
  return _SocialUserModel.fromJson(json);
}

/// @nodoc
class _$SocialUserModelTearOff {
  const _$SocialUserModelTearOff();

  _SocialUserModel call(
      {String? displayName, String? email, String? photoUrl}) {
    return _SocialUserModel(
      displayName: displayName,
      email: email,
      photoUrl: photoUrl,
    );
  }

  SocialUserModel fromJson(Map<String, Object?> json) {
    return SocialUserModel.fromJson(json);
  }
}

/// @nodoc
const $SocialUserModel = _$SocialUserModelTearOff();

/// @nodoc
mixin _$SocialUserModel {
  String? get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialUserModelCopyWith<SocialUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialUserModelCopyWith<$Res> {
  factory $SocialUserModelCopyWith(
          SocialUserModel value, $Res Function(SocialUserModel) then) =
      _$SocialUserModelCopyWithImpl<$Res>;
  $Res call({String? displayName, String? email, String? photoUrl});
}

/// @nodoc
class _$SocialUserModelCopyWithImpl<$Res>
    implements $SocialUserModelCopyWith<$Res> {
  _$SocialUserModelCopyWithImpl(this._value, this._then);

  final SocialUserModel _value;
  // ignore: unused_field
  final $Res Function(SocialUserModel) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SocialUserModelCopyWith<$Res>
    implements $SocialUserModelCopyWith<$Res> {
  factory _$SocialUserModelCopyWith(
          _SocialUserModel value, $Res Function(_SocialUserModel) then) =
      __$SocialUserModelCopyWithImpl<$Res>;
  @override
  $Res call({String? displayName, String? email, String? photoUrl});
}

/// @nodoc
class __$SocialUserModelCopyWithImpl<$Res>
    extends _$SocialUserModelCopyWithImpl<$Res>
    implements _$SocialUserModelCopyWith<$Res> {
  __$SocialUserModelCopyWithImpl(
      _SocialUserModel _value, $Res Function(_SocialUserModel) _then)
      : super(_value, (v) => _then(v as _SocialUserModel));

  @override
  _SocialUserModel get _value => super._value as _SocialUserModel;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_SocialUserModel(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialUserModel implements _SocialUserModel {
  _$_SocialUserModel({this.displayName, this.email, this.photoUrl});

  factory _$_SocialUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_SocialUserModelFromJson(json);

  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'SocialUserModel(displayName: $displayName, email: $email, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialUserModel &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(photoUrl));

  @JsonKey(ignore: true)
  @override
  _$SocialUserModelCopyWith<_SocialUserModel> get copyWith =>
      __$SocialUserModelCopyWithImpl<_SocialUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialUserModelToJson(this);
  }
}

abstract class _SocialUserModel implements SocialUserModel {
  factory _SocialUserModel(
      {String? displayName,
      String? email,
      String? photoUrl}) = _$_SocialUserModel;

  factory _SocialUserModel.fromJson(Map<String, dynamic> json) =
      _$_SocialUserModel.fromJson;

  @override
  String? get displayName;
  @override
  String? get email;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$SocialUserModelCopyWith<_SocialUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
