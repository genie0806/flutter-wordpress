import 'package:virtue_test/data/data_source/remote/simple_post_api.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';
import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/repository/post_repository.dart';

class SimplePostRepositoryImpl implements PostRepository {
  SimplePostApi simplePostLApi;

  SimplePostRepositoryImpl(this.simplePostLApi);

  @override
  Future<Result<SimplePostModel>> getPost() async {
    return simplePostLApi.fetchData();
  }
}
