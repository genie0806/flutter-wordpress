// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserResponseModel _$CreateUserResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateUserStatusModel.fromJson(json);
}

/// @nodoc
class _$CreateUserResponseModelTearOff {
  const _$CreateUserResponseModelTearOff();

  _CreateUserStatusModel call({int? code, String? message}) {
    return _CreateUserStatusModel(
      code: code,
      message: message,
    );
  }

  CreateUserResponseModel fromJson(Map<String, Object?> json) {
    return CreateUserResponseModel.fromJson(json);
  }
}

/// @nodoc
const $CreateUserResponseModel = _$CreateUserResponseModelTearOff();

/// @nodoc
mixin _$CreateUserResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserResponseModelCopyWith<CreateUserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserResponseModelCopyWith<$Res> {
  factory $CreateUserResponseModelCopyWith(CreateUserResponseModel value,
          $Res Function(CreateUserResponseModel) then) =
      _$CreateUserResponseModelCopyWithImpl<$Res>;
  $Res call({int? code, String? message});
}

/// @nodoc
class _$CreateUserResponseModelCopyWithImpl<$Res>
    implements $CreateUserResponseModelCopyWith<$Res> {
  _$CreateUserResponseModelCopyWithImpl(this._value, this._then);

  final CreateUserResponseModel _value;
  // ignore: unused_field
  final $Res Function(CreateUserResponseModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CreateUserStatusModelCopyWith<$Res>
    implements $CreateUserResponseModelCopyWith<$Res> {
  factory _$CreateUserStatusModelCopyWith(_CreateUserStatusModel value,
          $Res Function(_CreateUserStatusModel) then) =
      __$CreateUserStatusModelCopyWithImpl<$Res>;
  @override
  $Res call({int? code, String? message});
}

/// @nodoc
class __$CreateUserStatusModelCopyWithImpl<$Res>
    extends _$CreateUserResponseModelCopyWithImpl<$Res>
    implements _$CreateUserStatusModelCopyWith<$Res> {
  __$CreateUserStatusModelCopyWithImpl(_CreateUserStatusModel _value,
      $Res Function(_CreateUserStatusModel) _then)
      : super(_value, (v) => _then(v as _CreateUserStatusModel));

  @override
  _CreateUserStatusModel get _value => super._value as _CreateUserStatusModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_CreateUserStatusModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUserStatusModel implements _CreateUserStatusModel {
  _$_CreateUserStatusModel({this.code, this.message});

  factory _$_CreateUserStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserStatusModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'CreateUserResponseModel(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateUserStatusModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$CreateUserStatusModelCopyWith<_CreateUserStatusModel> get copyWith =>
      __$CreateUserStatusModelCopyWithImpl<_CreateUserStatusModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUserStatusModelToJson(this);
  }
}

abstract class _CreateUserStatusModel implements CreateUserResponseModel {
  factory _CreateUserStatusModel({int? code, String? message}) =
      _$_CreateUserStatusModel;

  factory _CreateUserStatusModel.fromJson(Map<String, dynamic> json) =
      _$_CreateUserStatusModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$CreateUserStatusModelCopyWith<_CreateUserStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
