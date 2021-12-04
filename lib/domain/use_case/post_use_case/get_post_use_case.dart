import 'package:test_virtue/core/data_case.dart';
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/domain/repository/repository.dart';

class GetPostUseCase extends UseCase<Result<SimplePostModel>, NoParams> {
  PostRepository repository;

  GetPostUseCase(this.repository);

  @override
  Future<Result<SimplePostModel>> call(NoParams params) async {
    final posts = await repository.getPost();

    return posts.when(success: (resultPosts) {
      return Result.success(resultPosts);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
