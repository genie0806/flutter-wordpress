import 'dart:async';

import 'package:flutter/material.dart';
import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/use_case/post_use_case/post_use_cases.dart';
import 'package:virtue_test/presentation/postpage/post_page_event.dart';
import 'package:virtue_test/presentation/postpage/post_page_state.dart';

class PostPageViewModel with ChangeNotifier {
  final PostUseCases useCases;
  PostPageViewModel(this.useCases);
  PostsState _postsState = PostsState();
  PostsState get postsState => _postsState;

  final _eventController = StreamController<PostPageEvent>.broadcast();
  Stream<PostPageEvent> get eventStream => _eventController.stream;

  Future refresh() async {
    await fetchPostPage();
    notifyListeners();
    return Future.delayed(const Duration(microseconds: 300));
  }

  Future<void> fetchPostPage() async {
    final result = await useCases.getPostList();
    result.when(success: (resultPosts) {
      _postsState = _postsState.copyWith(post: resultPosts);
      notifyListeners();
    }, error: (e) {
      print((result as Error).message.toString());
      _eventController.add(const PostPageEvent.showSnackBar('네트워크 에러 입니다'));
    });
  }
}
