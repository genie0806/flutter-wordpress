// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_me_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserMeModel _$$_UserMeModelFromJson(Map<String, dynamic> json) =>
    _$_UserMeModel(
      id: json['id'] as int?,
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      nickname: json['nickname'] as String?,
      avatarUrls: json['avatarUrls'] as String?,
    );

Map<String, dynamic> _$$_UserMeModelToJson(_$_UserMeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'nickname': instance.nickname,
      'avatarUrls': instance.avatarUrls,
    };
