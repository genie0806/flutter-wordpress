import 'package:test_virtue/core/data_case.dart';
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/domain/repository/post_repository.dart';

class GetPostUseCase extends UseCase<Result<SimplePostModel>, NoParams> {
  PostRepository repository;

  GetPostUseCase(this.repository);

  @override
  Future<Result<SimplePostModel>> call(NoParams params) async {
    return await repository.getPost();
  }
}
