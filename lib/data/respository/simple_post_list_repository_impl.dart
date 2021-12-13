import 'package:virtue_test/data/data_source/remote/simple_post_list_api.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';
import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/repository/post_list_repository.dart';

class SimpleLPostListRepositoryImpl implements PostListRepository {
  SimplePostListApi simplePostListLApi;

  SimpleLPostListRepositoryImpl(this.simplePostListLApi);

  @override
  Future<Result<List<SimplePostModel>>> getPostList() async {
    return simplePostListLApi.fetchListData();
  }
}
