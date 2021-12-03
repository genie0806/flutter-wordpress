import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:test_virtue/core/data_case.dart';
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/domain/use_case/post_use_case/post_use_cases.dart';
import 'package:test_virtue/presentation/postpage/post_page_event.dart';
import 'package:test_virtue/presentation/postpage/post_page_state.dart';

class PostPageViewModel with ChangeNotifier {
  final PostUseCases useCases;

  PostsState _postsState = PostsState();
  PostsState get postsState => _postsState;

  PostPageViewModel(this.useCases);

  final _eventController = StreamController<PostPageEvent>();
  Stream<PostPageEvent> get eventStream => _eventController.stream;

  Future<void> ferchPostPage(NoParams params) async {
    final result = await useCases.getPost(params);

    result.when(success: (resultPosts) {
      _postsState = _postsState.copyWith(posts: resultPosts);
      notifyListeners();
    }, error: (e) {
      print((result as Error).message.toString());
      _eventController.add(PostPageEvent.showSnackBar('네트워크 에러 입니다'));
    });
  }
}
