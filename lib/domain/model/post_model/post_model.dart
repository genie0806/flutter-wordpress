import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  factory PostModel(
      {int? id,
      String? date,
      String? dateGmt,
      String? modified,
      String? modifiedGmt,
      String? slug,
      String? status,
      String? type,
      String? link,
      Guid? guid,
      Title? title,
      Content? content,
      Content? excerpt,
      int? author,
      int? featuredMedia,
      String? commentStatus,
      String? pingStatus,
      bool? sticky,
      String? template,
      String? format,
      List<int>? categories,
      List<dynamic>? tags}) = _PostModel;
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

@freezed
class Content with _$Content {
  factory Content({String? rendered, bool? protected}) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

@freezed
class Guid with _$Guid {
  factory Guid({String? rendered}) = _Guid;

  factory Guid.fromJson(Map<String, dynamic> json) => _$GuidFromJson(json);
}

@freezed
class Title with _$Title {
  factory Title({String? rendered}) = _Title;

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}
