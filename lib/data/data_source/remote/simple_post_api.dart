import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:virtue_test/core/result.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';

String baseUrl = dotenv.get('BASE_URL');

class SimplePostApi {
  Future<Result<SimplePostModel>> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://virtureart.shop/index.php/wp-json/wp/v2/latest-posts'));
    Map<String, dynamic> jsonResponse = convert.jsonDecode((response.body));

    SimplePostModel simplePostApi = SimplePostModel.fromJson(jsonResponse);
    if (simplePostApi != null) {
      return Result.success(simplePostApi);
    }
    return const Result.error('잠시후 다시 시도해 주십시오');
  }
}
