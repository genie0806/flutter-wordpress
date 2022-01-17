// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentGetmodel _$$_CommentGetmodelFromJson(Map<String, dynamic> json) =>
    _$_CommentGetmodel(
      id: json['id'] as int?,
      author: json['author_name'] as String?,
      avatar: json['author_avatar_urls']["96"] as String?,
      content: json["content"]["rendered"] as String?,
      date: json['date'] as String?,
      post: json['post'] as int?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_CommentGetmodelToJson(_$_CommentGetmodel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'avatar': instance.avatar,
      'content': instance.content,
      'date': instance.date,
      'postId': instance.post,
      'email': instance.email,
    };
