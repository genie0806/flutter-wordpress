import 'dart:async';
import 'package:flutter/material.dart';
import 'package:test_virtue/core/data_case.dart';
import 'package:test_virtue/domain/use_case/post_use_case/post_use_cases.dart';
import 'package:test_virtue/presentation/post_list_page/post_list_page_event.dart';
import 'package:test_virtue/presentation/post_list_page/post_list_page_state.dart';
import 'package:test_virtue/core/result.dart';

class PostListPageViewModel with ChangeNotifier {
  final PostUseCases listUseCases;

  PostsListState _postsListState = PostsListState();
  PostsListState get postsListState => _postsListState;

  PostListPageViewModel(this.listUseCases);

  final _eventController = StreamController<PostListPageEvent>.broadcast();
  Stream<PostListPageEvent> get eventStream => _eventController.stream;

  Future refresh() async {
    await fetchPostListPage(NoParams());
    return Future.delayed(const Duration(seconds: 1));
  }

  Future<void> fetchPostListPage(NoParams params) async {
    final result = await listUseCases.getPostList(params);
    result.when(success: (resultPostList) {
      _postsListState = _postsListState.copyWith(postList: resultPostList);
      notifyListeners();
    }, error: (e) {
      print((result as Error).message.toString());
      _eventController.add(PostListPageEvent.showSnackBar('네트워크 에러 입니다'));
    });
  }
}
