import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:virtue_test/domain/model/login_user_model/login_response_model.dart';

String loginUrl = dotenv.get('USER_LOGIN_URL');

class LoginUserApi {
  final client = http.Client();

  Future<bool> fetchLoginUser(String? username, String? password) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/x-www-form-urlencoded'
    };
    final response = await http.post(
        Uri.parse('https://virtureart.shop/wp-json/jwt-auth/v1/token'),
        headers: requestHeaders,
        body: {
          "username": username,
          "password": password,
        });
    if (response.statusCode == 200) {
      String jsonMessage = response.body;
      LoginResponseModel responseModel = loginStatusFromJson(jsonMessage);
      print(responseModel);
      return responseModel.statusCode == 200 ? true : false;
    }
    return false;
  }
}
