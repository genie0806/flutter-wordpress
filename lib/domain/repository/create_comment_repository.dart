import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';

abstract class CreateCommentRepository {
  Future<Result<CommentGetModel>> postComment(
      int post, String content, String author, String email);
}
