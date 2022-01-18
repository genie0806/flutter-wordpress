import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';
import 'package:virtue_test/domain/repository/create_comment_repository.dart';

class CreateCommentUseCase {
  CreateCommentRepository repository;

  CreateCommentUseCase(
    this.repository,
  );

  Future<Result<String>> call(CommentGetModel comment) async {
    final result = await repository.postComment(comment);
    return result.when(success: (message) {
      return const Result.success('댓글이 등록됩니다.');
    }, error: (message) {
      return const Result.error('네트워크에 문제가 있습니다.');
    });
  }
}
