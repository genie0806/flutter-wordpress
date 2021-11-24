import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_title.freezed.dart';
part 'api_title.g.dart';

@freezed
class Title with _$Title {
  factory Title({String? rendered}) = _Title;

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}
