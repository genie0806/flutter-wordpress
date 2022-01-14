// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentGetmodel _$$_CommentGetmodelFromJson(Map<String, dynamic> json) =>
    _$_CommentGetmodel(
      id: json['id'] as int?,
      author: json['author'] as String?,
      avatar: json['avatar'] as String?,
      content: json['content'] as String?,
      date: json['date'] as String?,
      postId: json['postId'] as int?,
    );

Map<String, dynamic> _$$_CommentGetmodelToJson(_$_CommentGetmodel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'avatar': instance.avatar,
      'content': instance.content,
      'date': instance.date,
      'postId': instance.postId,
    };
