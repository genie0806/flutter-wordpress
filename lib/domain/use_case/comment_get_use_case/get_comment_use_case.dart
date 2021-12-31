import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';
import 'package:virtue_test/domain/repository/comment_get_repository.dart';

class GetCommentUseCase {
  CommentGetRepository repository;

  GetCommentUseCase(this.repository);

  Future<Result<List<CommentGetModel>>> call(int id) async {
    return await repository.getComment(id);
  }
}
