import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

String baseUrl = dotenv.get('BASE_URL');

class CreateCommentApi {
  Future<Result<CommentGetModel>> createComment(
      int post, String content, String author, String email) async {
    try {
      Map<String, String> requestHeaders = {
        'content-type': 'application/x-www-form-urlencoded',
      };
      final response = await http.post(
        Uri.parse(
            'https://virtureart.shop/index.php/wp-json/wp/v2/comments?post=$post&content=$content&author_name=$author&author_email=$email'),
        headers: requestHeaders,
        body: //jsonEncode(comment.toJson())
            {
          "post": post,
          "content": content,
          "author_name": author,
          "author_email": email,
        },
      );
      if (response.statusCode == 200) {
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
