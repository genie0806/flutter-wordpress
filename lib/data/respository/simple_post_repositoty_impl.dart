import 'package:test_virtue/data/data_source/remote/simple_post_api.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/domain/repository/repository.dart';

class SimplePostRepositoryImpl implements PostRepository {
  SimplePostApi simplePostApi;

  SimplePostRepositoryImpl(this.simplePostApi);

  @override
  Future<Result<List<SimplePostModel>>> getPosts() async {
    return simplePostApi.fetchData();
  }
}
