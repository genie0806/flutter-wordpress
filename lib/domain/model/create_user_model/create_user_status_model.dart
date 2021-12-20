import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_user_status_model.freezed.dart';
part 'create_user_status_model.g.dart';

@freezed
class CreateUserStatusModel with _$CreateUserStatusModel {
  factory CreateUserStatusModel({
    int? code,
    String? message,
  }) = _CreateUserStatusModel;
  factory CreateUserStatusModel.fromJson(Map<String, dynamic> json) =>
      _$CreateUserStatusModelFromJson(json);
}

CreateUserStatusModel createUserStatusModelFromJson(String str) =>
    CreateUserStatusModel.fromJson(json.decode(str));
