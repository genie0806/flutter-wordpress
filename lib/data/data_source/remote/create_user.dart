import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:virtue_test/core/user_login_config.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_model.dart';
import 'package:dio/dio.dart';

class CreateUserApi {
  Future<bool> createCustomer(CreateUserModel model) async {
    //키와 비밀키를 기반으로 인증토큰을 생성한다.
    String authToken = base64.encode(
        utf8.encode(UserLoginConfig.key + ":" + UserLoginConfig.sceret));

    //기본적으로 반환 변수가 false로 설정된다.
    bool statusVar = false;

    try {
      final response =
          //해당 URL을 게시하면 데이터와 model.tojson을 가지게 된다.
          await Dio().post(UserLoginConfig.url + UserLoginConfig.customUrl,
              data: model.toJson(),
              //http헤더에 해당옵션을 전달한다.
              options: Options(headers: {
                // 전달할 인증헤더
                HttpHeaders.authorizationHeader: 'Basic $authToken',
                HttpHeaders.contentTypeHeader: "application/json"
              }));
      //201인지 확인 고객생성 성공
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
