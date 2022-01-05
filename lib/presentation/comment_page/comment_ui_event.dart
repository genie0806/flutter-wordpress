import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_ui_event.freezed.dart';

@freezed
abstract class CommentPageUiEvent with _$CommentPageUiEvent {
  const factory CommentPageUiEvent.showToast(String message) = ShowToast;
}
