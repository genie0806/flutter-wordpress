import 'dart:async';
import 'package:flutter/material.dart';
import 'package:virtue_test/domain/use_case/post_use_case/post_use_cases.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page_event.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page_state.dart';
import 'package:virtue_test/core/result.dart';

class PostListPageViewModel with ChangeNotifier {
  final PostUseCases useCases;

  PostsListState _postsListState = PostsListState();
  PostsListState get postsListState => _postsListState;

  PostListPageViewModel(this.useCases);

  final _eventController = StreamController<PostListPageEvent>.broadcast();
  Stream<PostListPageEvent> get eventStream => _eventController.stream;

  void onEvent(PostListPageEvent event) {
    event.when(
        reloadPage: refreshList,
        showSnackBar: (String message) {
          _eventController
              .add(const PostListPageEvent.showSnackBar('네트워크 에러입니다.'));
        });
  }

  Future refreshList() async {
    await fetchPostListPage();
    notifyListeners();
  }

  Future<void> fetchPostListPage() async {
    final result = await useCases.getPostList();
    result.when(success: (resultPostList) {
      _postsListState = _postsListState.copyWith(postList: resultPostList);
      notifyListeners();
    }, error: (e) {
      print((result as Error).message.toString());
      _eventController.add(const PostListPageEvent.showSnackBar('네트워크 에러 입니다'));
    });
  }
}
