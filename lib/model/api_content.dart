import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_content.freezed.dart';
part 'api_content.g.dart';

@freezed
class Content with _$Content {
  factory Content({String? rendered, bool? protected}) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}
