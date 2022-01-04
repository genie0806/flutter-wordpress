import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';
import 'package:virtue_test/domain/repository/create_comment_repository.dart';

class CreateCommentUseCase {
  CreateCommentRepository repository;

  CreateCommentUseCase(
    this.repository,
  );

  Future<Result<CommentGetModel>> call(CommentGetModel comment) async {
    return await repository.postComment(comment);
  }
}
