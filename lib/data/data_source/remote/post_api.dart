import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/model/post_model/post_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

String baseUrl = dotenv.get('BASE_URL');

class PostApi {
  Future<List<PostModel>> fetchData() async {
    final response = await http.get(Uri.parse(baseUrl + 'posts'));
    Iterable jsonResponse = convert.jsonDecode(response.body);
    List<PostModel> postApi =
        jsonResponse.map((e) => PostModel.fromJson(e)).toList();
    return postApi;
  }
}
