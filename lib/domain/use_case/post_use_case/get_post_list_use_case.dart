import 'package:test_virtue/core/data_case.dart';
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/domain/repository/repository.dart';

class GetPostListsUseCase
    extends UseCase<Result<List<SimplePostModel>>, NoParams> {
  PostRepository repository;

  GetPostListsUseCase(this.repository);

  @override
  Future<Result<List<SimplePostModel>>> call(NoParams params) async {
    final posts = await repository.getPostList();

    return posts.when(success: (resultPosts) {
      return Result.success(resultPosts);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
