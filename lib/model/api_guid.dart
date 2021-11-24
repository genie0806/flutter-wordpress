import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_guid.freezed.dart';
part 'api_guid.g.dart';

@freezed
class Guid with _$Guid {
  factory Guid({String? rendered}) = _Guid;

  factory Guid.fromJson(Map<String, dynamic> json) => _$GuidFromJson(json);
}
