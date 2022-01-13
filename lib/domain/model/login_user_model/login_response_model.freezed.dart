// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
class _$LoginResponseModelTearOff {
  const _$LoginResponseModelTearOff();

  _LoginResponseModel call(
      {bool? success,
      int? statusCode,
      String? code,
      String? message,
      LoginUserModel? data}) {
    return _LoginResponseModel(
      success: success,
      statusCode: statusCode,
      code: code,
      message: message,
      data: data,
    );
  }

  LoginResponseModel fromJson(Map<String, Object?> json) {
    return LoginResponseModel.fromJson(json);
  }
}

/// @nodoc
const $LoginResponseModel = _$LoginResponseModelTearOff();

/// @nodoc
mixin _$LoginResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  LoginUserModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res>;
  $Res call(
      {bool? success,
      int? statusCode,
      String? code,
      String? message,
      LoginUserModel? data});

  $LoginUserModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  final LoginResponseModel _value;
  // ignore: unused_field
  final $Res Function(LoginResponseModel) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginUserModel?,
    ));
  }

  @override
  $LoginUserModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginUserModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$LoginResponseModelCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(
          _LoginResponseModel value, $Res Function(_LoginResponseModel) then) =
      __$LoginResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? success,
      int? statusCode,
      String? code,
      String? message,
      LoginUserModel? data});

  @override
  $LoginUserModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(
      _LoginResponseModel _value, $Res Function(_LoginResponseModel) _then)
      : super(_value, (v) => _then(v as _LoginResponseModel));

  @override
  _LoginResponseModel get _value => super._value as _LoginResponseModel;

  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_LoginResponseModel(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginUserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponseModel implements _LoginResponseModel {
  _$_LoginResponseModel(
      {this.success, this.statusCode, this.code, this.message, this.data});

  factory _$_LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseModelFromJson(json);

  @override
  final bool? success;
  @override
  final int? statusCode;
  @override
  final String? code;
  @override
  final String? message;
  @override
  final LoginUserModel? data;

  @override
  String toString() {
    return 'LoginResponseModel(success: $success, statusCode: $statusCode, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponseModel &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith =>
      __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseModelToJson(this);
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  factory _LoginResponseModel(
      {bool? success,
      int? statusCode,
      String? code,
      String? message,
      LoginUserModel? data}) = _$_LoginResponseModel;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseModel.fromJson;

  @override
  bool? get success;
  @override
  int? get statusCode;
  @override
  String? get code;
  @override
  String? get message;
  @override
  LoginUserModel? get data;
  @override
  @JsonKey(ignore: true)
  _$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
