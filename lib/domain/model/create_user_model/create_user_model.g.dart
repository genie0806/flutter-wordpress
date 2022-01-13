// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateUserModel _$$_CreateUserModelFromJson(Map<String, dynamic> json) =>
    _$_CreateUserModel(
      email: json['email'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
      nickname: json['nickname'] as String?,
    );

Map<String, dynamic> _$$_CreateUserModelToJson(_$_CreateUserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'nickname': instance.nickname,
    };
