import 'dart:convert';

class UserModel {
  String? email;
  String? password;
  String? confirmPassword;

  UserModel({this.email, this.password, this.confirmPassword});

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;

    return data;
  }
}

UserResponseModel userResponseFromJson(String str) =>
    UserResponseModel.fromJson(json.decode(str));

class UserResponseModel {
  int? code;
  String? message;
  UserResponseModel({this.code, this.message});
  UserResponseModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    return data;
  }
}
