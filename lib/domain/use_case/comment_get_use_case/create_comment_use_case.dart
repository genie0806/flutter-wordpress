import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/repository/create_comment_repository.dart';

class CreateCommentUseCase {
  CreateCommentRepository repository;

  CreateCommentUseCase(
    this.repository,
  );

  Future<Result<String>> call(
      int post, String content, String author, String email) async {
    final result = await repository.postComment(post, content, author, email);
    return result.when(success: (message) {
      return const Result.success('댓글이 등록됩니다.');
    }, error: (message) {
      return const Result.error('네트워크에 문제가 있습니다.');
    });
  }
}
