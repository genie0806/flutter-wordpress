// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_me_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserMeModel _$$_UserMeModelFromJson(Map<String, dynamic> json) =>
    _$_UserMeModel(
      id: json['id'] as int?,
      username: json['username'] as String?,
      firstName: json['first_Name'] as String?,
      lastName: json['last_Name'] as String?,
      email: json['email'] as String?,
      nickname: json['nickname'] as String?,
      avatarUrls: json['author_avatar_urls']["96"] as String?,
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
