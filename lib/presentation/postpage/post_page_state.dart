import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';

part 'post_page_state.freezed.dart';

@freezed
class PostsState with _$PostsState {
  factory PostsState({
    @Default([]) List<SimplePostModel> posts,
  }) = _PostsState;
}
