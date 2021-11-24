import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test_virtue/model/api_content.dart';
import 'package:test_virtue/model/api_guid.dart';

part 'post_api.freezed.dart';
part 'post_api.g.dart';

@freezed
class PostApi with _$PostApi {
  factory PostApi(
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
      Guid? title,
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
      List<void>? tags}) = _PostApi;
  factory PostApi.fromJson(Map<String, dynamic> json) =>
      _$PostApiFromJson(json);
}
