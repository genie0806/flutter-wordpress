import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';

abstract class CommentGetRepository {
  Future<Result<List<CommentGetModel>>> getComment(int id);
}
