import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:test_virtue/core/result.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';

String baseUrl = dotenv.get('BASE_URL');

class SimplePostListApi {
  Future<Result<List<SimplePostModel>>> fetchListData() async {
    final response = await http.get(Uri.parse(baseUrl + 'latest-posts'));
    Iterable jsonResponse = convert.jsonDecode((response.body));
    List<SimplePostModel> simplePostApiList =
        jsonResponse.map((e) => SimplePostModel.fromJson(e)).toList();
    if (simplePostApiList != null) {
      return Result.success(simplePostApiList);
    }
    return const Result.error('잠시후 다시 시도해 주십시오');
  }
}
