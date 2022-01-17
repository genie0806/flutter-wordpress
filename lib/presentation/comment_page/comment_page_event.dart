import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_page_event.freezed.dart';

@freezed
abstract class CommentPageEvent with _$CommentPageEvent {
  const factory CommentPageEvent.storeContent(String content) = StoreContent;
  const factory CommentPageEvent.storeEmail(String email) = StoreEmail;
  const factory CommentPageEvent.storePostId(int postId) = StorePostId;
  const factory CommentPageEvent.storeNickname(String nickname) = StoreNickname;
  const factory CommentPageEvent.registerComment() = RegisterComment;
}
