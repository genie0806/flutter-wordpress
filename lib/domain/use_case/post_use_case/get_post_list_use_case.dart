import 'package:test_virtue/core/data_case.dart';
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/domain/repository/post_list_repository.dart';

class GetPostListsUseCase
    extends UseCase<Result<List<SimplePostModel>>, NoParams> {
  PostListRepository repository;

  GetPostListsUseCase(this.repository);

  @override
  Future<Result<List<SimplePostModel>>> call(NoParams params) async {
    return await repository.getPostList();
  }
}
