import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_virtue/core/data_case.dart';
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/domain/use_case/post_use_case/post_use_cases.dart';
import 'package:test_virtue/presentation/postpage/post_page_event.dart';
import 'package:test_virtue/presentation/postpage/post_page_state.dart';

class PostPageViewModel with ChangeNotifier {
  final PostUseCases useCases;
  PostPageViewModel(this.useCases);
  PostsState _postsState = PostsState();
  PostsState get postsState => _postsState;

  final _eventController = StreamController<PostPageEvent>();
  Stream<PostPageEvent> get eventStream => _eventController.stream;

  Future refresh() async {
    await ferchPostPage(NoParams());
    notifyListeners();
    return Future.delayed(const Duration(seconds: 1));
  }

  Future<void> ferchPostPage(NoParams params) async {
    final result = await useCases.getPost(params);
    result.when(success: (resultPosts) {
      _postsState = _postsState.copyWith(post: resultPosts);
      notifyListeners();
    }, error: (e) {
      print((result as Error).message.toString());
      _eventController.add(PostPageEvent.showSnackBar('네트워크 에러 입니다'));
    });
  }
}
