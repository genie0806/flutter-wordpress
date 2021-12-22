import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:virtue_test/domain/model/login_user_model/login_user_model.dart';

part 'login_status_model.freezed.dart';
part 'login_status_model.g.dart';

@freezed
class LoginStatusModel with _$LoginStatusModel {
  factory LoginStatusModel({
    bool? success,
    int? statusCode,
    String? code,
    String? message,
    LoginUserModel? data,
  }) = _LoginStatusModel;
  factory LoginStatusModel.fromJson(Map<String, dynamic> json) =>
      _$LoginStatusModelFromJson(json);
}

LoginStatusModel loginStatusFromJson(String str) =>
    LoginStatusModel.fromJson(json.decode(str));
