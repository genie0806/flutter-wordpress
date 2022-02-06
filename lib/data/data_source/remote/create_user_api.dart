import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:virtue_test/domain/model/create_user_model/create_user_model.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_response_model.dart';

String baseUrl = dotenv.get('BASE_URL');

class CreateUserAPi {
  final client = http.Client();

  Future<CreateUserResponseModel> registerUser(CreateUserModel model) async {
    Map<String, String> requestHeaders = {
      'content-type': 'application/json',
    };
    final response = await client.post(
      Uri.parse(baseUrl + 'users/register'),
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    return createUserResponseModelFromJson(response.body);
  }
}
