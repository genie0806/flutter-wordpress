import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_me_model.freezed.dart';
part 'user_me_model.g.dart';

@freezed
class UserMeModel with _$UserMeModel {
  factory UserMeModel(
      {int? id,
      String? username,
      String? firstName,
      String? lastName,
      String? email,
      String? nickname,
      String? avatarUrls}) = _UserMeModel;
  factory UserMeModel.fromJson(Map<String, dynamic> json) =>
      _$UserMeModelFromJson(json);
}
