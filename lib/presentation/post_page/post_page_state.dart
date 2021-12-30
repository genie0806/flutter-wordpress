import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';

part 'post_page_state.freezed.dart';

@freezed
class PostsState with _$PostsState {
  factory PostsState({
    List<SimplePostModel>? post,
  }) = _PostsState;
}
