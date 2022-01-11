import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

String scoailApiUrl = dotenv.get('SOCIAL_API_URL');
String socialApiEnd = dotenv.get('SOCIAL_API_END');

class SocialLoginApi {
  final client = http.Client();
  Future<bool> fetchSocialLogin(
      String userName, String displayName, String photoUrl) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/x-www-form-urlencoded'
    };
    Uri url = Uri.https(scoailApiUrl, socialApiEnd);

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
