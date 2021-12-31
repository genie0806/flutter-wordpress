import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/data/data_source/remote/comment_get_api.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';
import 'package:virtue_test/domain/repository/comment_get_repository.dart';

class CommentGetRepositoryImpl implements CommentGetRepository {
  CommentGetApi commentGetApi;

  CommentGetRepositoryImpl(
    this.commentGetApi,
  );

  @override
  Future<Result<List<CommentGetModel>>> getComment(int id) async {
    return await commentGetApi.fetchComments(id);
  }
}
