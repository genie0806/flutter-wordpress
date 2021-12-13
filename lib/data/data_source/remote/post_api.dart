import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/post_model/post_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

String baseUrl = dotenv.get('BASE_URL');

class PostApi {
  Future<Result<List<PostModel>>> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://virtureart.shop/index.php/wp-json/wp/v2/latest-posts'));
    Iterable jsonResponse = convert.jsonDecode(response.body);
    List<PostModel> postApi =
        jsonResponse.map((e) => PostModel.fromJson(e)).toList();
    if (postApi != null) {
      return Result.success(postApi);
    }
    return const Result.error('잠시후 다시 시도해 주십시오');
  }
}
