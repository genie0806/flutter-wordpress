import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_user_model.freezed.dart';
part 'login_user_model.g.dart';

@freezed
class LoginUserModel with _$LoginUserModel {
  factory LoginUserModel(
      {String? token,
      int? id,
      String? email,
      String? nicename,
      String? firstName,
      String? lastName,
      String? displayName}) = _LoginUserModel;
  factory LoginUserModel.fromJson(Map<String, dynamic> json) =>
      _$LoginUserModelFromJson(json);
}
