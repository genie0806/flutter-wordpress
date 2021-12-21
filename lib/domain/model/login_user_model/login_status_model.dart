import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_status_model.freezed.dart';
part 'login_status_model.g.dart';

@freezed
class LoginStatusModel with _$LoginStatusModel {
  factory LoginStatusModel({
    String? success,
    int? statusCode,
    String? code,
    String? message,
    String? data,
  }) = _LoginStatusModel;
  factory LoginStatusModel.fromJson(Map<String, dynamic> json) =>
      _$LoginStatusModelFromJson(json);
}

LoginStatusModel userResponseFromJson(String str) =>
    LoginStatusModel.fromJson(json.decode(str));
