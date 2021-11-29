import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'simple_post_model.freezed.dart';
part 'simple_post_model.g.dart';

@freezed
class SimplePostModel with _$SimplePostModel {
  factory SimplePostModel(
      {int? id,
      String? postDate,
      String? title,
      String? categoryName,
      String? imageUrl,
      String? postContent}) = _SimplePostModel;
  factory SimplePostModel.fromJson(Map<String, dynamic> json) =>
      _$SimplePostModelFromJson(json);
}
