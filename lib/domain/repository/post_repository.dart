import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';

abstract class PostRepository {
  Future<Result<SimplePostModel>> getPost();
}
