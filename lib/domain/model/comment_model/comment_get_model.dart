import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment_get_model.freezed.dart';
part 'comment_get_model.g.dart';

@freezed
class CommentGetModel with _$CommentGetModel {
  factory CommentGetModel({
    int? id,
    String? author,
    String? avatar,
    String? content,
    String? date,
    int? postId,
  }) = _CommentGetmodel;
  factory CommentGetModel.fromJson(Map<String, dynamic> json) =>
      _$CommentGetModelFromJson(json);
}
