import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:virtue_test/domain/model/login_user_model/login_user_model.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({
    bool? success,
    int? statusCode,
    String? code,
    String? message,
    LoginUserModel? data,
  }) = _LoginResponseModel;
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

LoginResponseModel loginStatusFromJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));
