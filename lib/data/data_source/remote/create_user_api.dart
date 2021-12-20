import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:virtue_test/domain/model/create_user_model/user_model.dart';

String baseUrl = dotenv.get('BASE_URL');

class CreateUserAPi {
  static final client = http.Client();

  static Future<UserResponseModel> registerUser(UserModel model) async {
    Map<String, String> requestHeaders = {
      'content-type': 'application/json',
    };
    final response = await client.post(
      Uri.parse(baseUrl + 'users/register'),
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    return userResponseFromJson(response.body);
  }
}
