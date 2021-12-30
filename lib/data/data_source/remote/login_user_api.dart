import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/login_user_model/login_response_model.dart';

String loginUrl = dotenv.get('USER_LOGIN_URL');

class LoginUserApi {
  final client = http.Client();

  Future<Result<LoginResponseModel>> fetchLoginUser(
      String? username, String? password) async {
    //실패할수있으니 try catch
    try {
      Map<String, String> requestHeaders = {
        'Content-type': 'application/x-www-form-urlencoded'
      };
      final response =
          await http.post(Uri.parse(loginUrl), headers: requestHeaders, body: {
        "username": username,
        "password": password,
      });
      if (response.statusCode == 200) {
        String jsonMessage = response.body;
        LoginResponseModel responseModel = loginStatusFromJson(jsonMessage);
        return Result.success(responseModel);
      } else {
        return const Result.error('아이디와 비밀번호를 다시 확인해주세요');
      }
    } catch (e) {
      return const Result.error('인터넷 연결을 확인해주세요');
    }
  }
}
