import 'package:http/http.dart' as http;

class SocialLoginApi {
  static var client = http.Client();
  Future<bool> fetchSocialLogin(String userName) async {
    final url = Uri.https("virtureart.shop", "/wp-json/jwt-auth/v1/token");
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/x-www-form-urlencoded'
    };
    final response = await client.post(url,
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
