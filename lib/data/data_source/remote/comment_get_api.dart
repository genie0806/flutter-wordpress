import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

String baseUrl = dotenv.get('BASE_URL');

class CommentGetApi {
  Future<Result<List<CommentGetmodel>>> fetchComments(int id) async {
    try {
      final response = await http.get(
          Uri.parse("$baseUrl/wp-json/wp/v2/comments?post=" + id.toString()));
      Iterable jsonResponse = convert.jsonDecode(response.body);
      List<CommentGetmodel> commentGetApiList =
          jsonResponse.map((e) => CommentGetmodel.fromJson(e)).toList();

      return Result.success(commentGetApiList);
    } on Exception catch (e) {
      return const Result.error('인터넷 연결이 되어있지 않습니다.');
    }
  }
}