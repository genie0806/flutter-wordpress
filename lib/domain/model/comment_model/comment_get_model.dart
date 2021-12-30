import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment_get_model.freezed.dart';
part 'comment_get_model.g.dart';

@freezed
class CommentGetmodel with _$CommentGetmodel {
  factory CommentGetmodel({
    int? id,
    String? author,
    String? avatar,
    String? content,
    String? date,
  }) = _CommentGetmodel;
  factory CommentGetmodel.fromJson(Map<String, dynamic> json) =>
      _$CommentGetmodelFromJson(json);
}
