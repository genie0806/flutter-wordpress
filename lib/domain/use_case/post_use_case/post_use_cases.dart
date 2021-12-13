import 'package:virtue_test/domain/use_case/post_use_case/get_post_list_use_case.dart';
import 'package:virtue_test/domain/use_case/post_use_case/get_post_use_case.dart';

class PostUseCases {
  final GetPostListsUseCase getPostList;
  final GetPostUseCase getPost;

  PostUseCases({required this.getPostList, required this.getPost});
}
