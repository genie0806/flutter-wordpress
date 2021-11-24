// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostApi _$$_PostApiFromJson(Map<String, dynamic> json) => _$_PostApi(
      id: json['id'] as int?,
      date: json['date'] as String?,
      dateGmt: json['dateGmt'] as String?,
      modified: json['modified'] as String?,
      modifiedGmt: json['modifiedGmt'] as String?,
      slug: json['slug'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      link: json['link'] as String?,
      guid: json['guid'] == null
          ? null
          : Guid.fromJson(json['guid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : Title.fromJson(json['title'] as Map<String, dynamic>),
      content: json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
      excerpt: json['excerpt'] == null
          ? null
          : Content.fromJson(json['excerpt'] as Map<String, dynamic>),
      author: json['author'] as int?,
      featuredMedia: json['featuredMedia'] as int?,
      commentStatus: json['commentStatus'] as String?,
      pingStatus: json['pingStatus'] as String?,
      sticky: json['sticky'] as bool?,
      template: json['template'] as String?,
      format: json['format'] as String?,
      categories:
          (json['categories'] as List<dynamic>?)?.map((e) => e as int).toList(),
      tags: json['tags'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_PostApiToJson(_$_PostApi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'dateGmt': instance.dateGmt,
      'modified': instance.modified,
      'modifiedGmt': instance.modifiedGmt,
      'slug': instance.slug,
      'status': instance.status,
      'type': instance.type,
      'link': instance.link,
      'guid': instance.guid,
      'title': instance.title,
      'content': instance.content,
      'excerpt': instance.excerpt,
      'author': instance.author,
      'featuredMedia': instance.featuredMedia,
      'commentStatus': instance.commentStatus,
      'pingStatus': instance.pingStatus,
      'sticky': instance.sticky,
      'template': instance.template,
      'format': instance.format,
      'categories': instance.categories,
      'tags': instance.tags,
    };

_$_Content _$$_ContentFromJson(Map<String, dynamic> json) => _$_Content(
      rendered: json['rendered'] as String?,
      protected: json['protected'] as bool?,
    );

Map<String, dynamic> _$$_ContentToJson(_$_Content instance) =>
    <String, dynamic>{
      'rendered': instance.rendered,
      'protected': instance.protected,
    };

_$_Guid _$$_GuidFromJson(Map<String, dynamic> json) => _$_Guid(
      rendered: json['rendered'] as String?,
    );

Map<String, dynamic> _$$_GuidToJson(_$_Guid instance) => <String, dynamic>{
      'rendered': instance.rendered,
    };

_$_Title _$$_TitleFromJson(Map<String, dynamic> json) => _$_Title(
      rendered: json['rendered'] as String?,
    );

Map<String, dynamic> _$$_TitleToJson(_$_Title instance) => <String, dynamic>{
      'rendered': instance.rendered,
    };
