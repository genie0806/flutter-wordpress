import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';

part 'comment_page_event.freezed.dart';

@freezed
abstract class CommentPageEvent with _$CommentPageEvent {
  const factory CommentPageEvent.storeContent(String content) = StoreContent;
  const factory CommentPageEvent.storeEmail(String email) = StoreEmail;
  const factory CommentPageEvent.storePostId(int postId) = StorePostId;
  const factory CommentPageEvent.storeNickname(String nickname) = StoreNickname;
  const factory CommentPageEvent.registerComment(CommentGetModel comment) =
      RegisterComment;
}
