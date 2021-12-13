import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';
import 'package:virtue_test/domain/repository/post_repository.dart';

class GetPostUseCase {
  PostRepository repository;

  GetPostUseCase(this.repository);

  Future<Result<SimplePostModel>> call() async {
    return await repository.getPost();
  }
}
