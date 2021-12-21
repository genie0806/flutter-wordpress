import 'dart:convert' as convert;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:virtue_test/core/result.dart';

String loginUrl = dotenv.get('USER_LOGIN_URL');

class loginUserApi {
  final client = http.Client();

  Future<Result<bool>> fetchLoginUser(
      String? username, String? password) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/x-www-form-urlencoded'
    };
    final response =
        await http.post(Uri.parse(loginUrl), 
        headers: requestHeaders, body: {
      "username": username,
      "password": password,
    });
    if(response.)

  }
}
