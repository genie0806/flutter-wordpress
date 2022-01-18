import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/data/data_source/remote/create_comment.api.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';
import 'package:virtue_test/domain/repository/create_comment_repository.dart';

class CreateCommentRepositoryImpl implements CreateCommentRepository {
  CreateCommentApi createCommentApi;

  CreateCommentRepositoryImpl(
    this.createCommentApi,
  );

  @override
  Future<Result<CommentGetModel>> postComment(
      int post, String content, String author, String email) async {
    return createCommentApi.createComment(post, content, author, email);
  }
}
