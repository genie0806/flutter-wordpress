import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';
import 'package:virtue_test/domain/repository/post_list_repository.dart';

class GetPostListsUseCase {
  PostListRepository repository;

  GetPostListsUseCase(this.repository);

  Future<Result<List<SimplePostModel>>> call() async {
    return await repository.getPostList();
  }
}
