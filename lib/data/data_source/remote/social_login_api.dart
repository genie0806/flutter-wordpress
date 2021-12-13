import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:virtue_test/core/result.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

String baseUrl = dotenv.get('BASE_URL');

class SocialLoginApi {
  static var client = http.Client();
  Future<bool> fetchSocialLogin(String userName) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/x-www-form-urlencoded'
    };

    var url = Uri.https("virtureart.shop", "/wp-json/jwt-auth/v1/token");

    var response = await client.post(url,
        headers: requestHeaders,
        body: {"username": userName, "social_login": "true"});
    if (response.statusCode == 200) {
      print(response.body);
      return true;
    } else {
      return false;
    }
  }
}
