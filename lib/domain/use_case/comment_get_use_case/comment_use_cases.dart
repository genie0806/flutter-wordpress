import 'package:virtue_test/domain/use_case/comment_get_use_case/create_comment_use_case.dart';
import 'package:virtue_test/domain/use_case/comment_get_use_case/get_comment_use_case.dart';

class CommentGetUseCases {
  final GetCommentUseCase getCommentUseCase;
  final CreateCommentUseCase createCommentUseCase;

  CommentGetUseCases(
      {required this.getCommentUseCase, required this.createCommentUseCase});
}
