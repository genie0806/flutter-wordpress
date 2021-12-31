import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_page_event.freezed.dart';

@freezed
abstract class CommentPageEvent with _$CommentPageEvent {
  const factory CommentPageEvent.showToast(String message) = ShowToast;
}
