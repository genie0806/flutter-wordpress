import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_user_response_model.freezed.dart';
part 'create_user_response_model.g.dart';

@freezed
class CreateUserResponseModel with _$CreateUserResponseModel {
  factory CreateUserResponseModel({
    int? code,
    String? message,
  }) = _CreateUserStatusModel;
  factory CreateUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateUserResponseModelFromJson(json);
}

CreateUserResponseModel createUserResponseModelFromJson(String str) =>
    CreateUserResponseModel.fromJson(json.decode(str));
