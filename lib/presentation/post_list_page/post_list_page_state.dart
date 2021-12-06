import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';

part 'post_list_page_state.freezed.dart';

@freezed
class PostsListState with _$PostsListState {
  factory PostsListState({
    @Default([]) List<SimplePostModel> postList,
  }) = _PostsListState;
}
