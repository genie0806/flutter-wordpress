import 'package:flutter_dotenv/flutter_dotenv.dart';

String userLoginUrl = dotenv.get('USER_LOGIN_URL');

class UserLoginConfig {
  static String key = "";
  static String sceret = "";
  static String url = userLoginUrl;
  static String customUrl = "";
}
