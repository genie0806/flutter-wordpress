import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';

abstract class PostRepository {
  Future<Result<List<SimplePostModel>>> getPosts();
}
