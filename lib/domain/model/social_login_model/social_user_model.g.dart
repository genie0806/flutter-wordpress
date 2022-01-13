// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialUserModel _$$_SocialUserModelFromJson(Map<String, dynamic> json) =>
    _$_SocialUserModel(
      displayName: json['data']['nickname'] as String?,
      email: json['email'] as String?,
      photoUrl: json['data']['avatar_urls'] as String?,
    );

Map<String, dynamic> _$$_SocialUserModelToJson(_$_SocialUserModel instance) =>
    <String, dynamic>{
      'nickname': instance.displayName,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
    };
