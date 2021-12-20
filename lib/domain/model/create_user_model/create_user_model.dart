import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_user_model.freezed.dart';
part 'create_user_model.g.dart';

@freezed
class CreateUserModel with _$CreateUserModel {
  factory CreateUserModel({
    String? email,
    String? password,
    String? confirmPassword,
  }) = _CreateUserModel;
  factory CreateUserModel.fromJson(Map<String, dynamic> json) =>
      _$CreateUserModelFromJson(json);
}
