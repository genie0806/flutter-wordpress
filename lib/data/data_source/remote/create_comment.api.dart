import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

String baseUrl = dotenv.get('BASE_URL');
Map<String, String> _urlHeader = {
  'Authorization': '',
};

class CreateCommentApi {
  Future<Result<CommentGetModel>> createComment(CommentGetModel comment) async {
    try {
      final response =
          await http.post(Uri.parse(baseUrl + 'comments'), headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      }, body: {
        "post": comment.post,
        "content": comment.content,
        "author_email": comment.email,
        "author_name": comment.author
      }
              //comment.toJson(),
              );
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Result.success(
            CommentGetModel.fromJson(convert.jsonDecode(response.body)));
      } else {
        return const Result.error('인터넷 연결이 되어있지않습니다.');
      }
    } catch (e) {
      return const Result.error('인터넷 연결이 되어있지않습니다.');
    }
  }
}
