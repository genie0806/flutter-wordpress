import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';

part 'comment_page_state.freezed.dart';

@freezed
class CommentPageState with _$CommentPageState {
  factory CommentPageState({
    @Default([]) List<CommentGetModel> model,
    required CommentGetModel commentModel,
    @Default(true) bool loading,
  }) = _CommentPageState;
}
