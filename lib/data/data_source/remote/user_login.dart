import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:virtue_test/core/user_login_config.dart';
import 'package:virtue_test/domain/model/user_login_model/user_login_model.dart';
import 'package:dio/dio.dart';

class UserLoginApi {
  Future<bool> createCustomer(UserLoginModel model) async {
    String authToken = base64.encode(
        utf8.encode(UserLoginConfig.key + ":" + UserLoginConfig.sceret));

    bool statusVar = false;

    try {
      final response =
          await Dio().post(UserLoginConfig.url + UserLoginConfig.customUrl,
              data: model.toJson(),
              options: Options(headers: {
                HttpHeaders.authorizationHeader: 'Basic $authToken',
                HttpHeaders.contentTypeHeader: "application/json"
              }));
      if (response.statusCode == 201) {
        statusVar = true;
      }
    } on DioError catch (e) {
      if (e.response?.statusCode == 404) {
        statusVar = false;
      } else {
        statusVar = false;
      }
    }
    return statusVar;
  }
}
