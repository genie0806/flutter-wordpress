// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginUserModel _$$_LoginUserModelFromJson(Map<String, dynamic> json) =>
    _$_LoginUserModel(
      token: json['token'] as String?,
      id: json['id'] as int?,
      email: json['email'] as String?,
      nicename: json['nicename'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      displayName: json['displayName'] as String?,
    );

Map<String, dynamic> _$$_LoginUserModelToJson(_$_LoginUserModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'id': instance.id,
      'email': instance.email,
      'nicename': instance.nicename,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'displayName': instance.displayName,
    };
