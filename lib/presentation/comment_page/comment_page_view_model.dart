import 'dart:async';

import 'package:flutter/material.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';
import 'package:virtue_test/domain/use_case/comment_get_use_case/comment_use_cases.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_state.dart';
import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/presentation/comment_page/comment_ui_event.dart';
import 'comment_page_event.dart';

class CommentPageViewModel with ChangeNotifier {
  CommentGetUseCases useCases;
  CommentPageViewModel(
    this.useCases,
  );

  CommentPageState _state = CommentPageState(commentModel: CommentGetModel());
  CommentPageState get state => _state;

  final _uiEventController = StreamController<CommentPageUiEvent>.broadcast();
  Stream<CommentPageUiEvent> get eventStream => _uiEventController.stream;

  void onEvent(CommentPageEvent event) {
    event.when(storeContent: (content) {
      _state = state.copyWith(
          commentModel: state.commentModel.copyWith(content: content));
    }, storeEmail: (email) {
      _state = state.copyWith(
          commentModel: state.commentModel.copyWith(email: email));
    }, storeNickname: (nickname) {
      _state = state.copyWith(
          commentModel: state.commentModel.copyWith(author: nickname));
    }, storePostId: (postId) {
      _state = state.copyWith(
          commentModel: state.commentModel.copyWith(post: postId));
    }, registerComment:
        (int post, String content, String author, String email) async {
      final result =
          await useCases.createCommentUseCase(post, content, author, email);
      result.when(success: (message) {
        _uiEventController.add(RegisterSuccessToast(message));
      }, error: (message) {
        _uiEventController.add(RegisterErrorToast(message));
      });
    }, loadingUiEvent: () {
      _state = _state.copyWith(loading: !state.loading);
    });

    notifyListeners();
  }

  Future refreshList(int id) async {
    await fetchCommentPage(id);
    notifyListeners();
  }

  Future<List<CommentGetModel>?> fetchCommentPage(int id) async {
    _state = _state.copyWith(loading: true);
    notifyListeners();
    final result = await useCases.getCommentUseCase(id);
    result.when(
      success: (resultComment) {
        _state = _state.copyWith(model: resultComment, loading: false);
      },
      error: (e) {
        print((result as Error).message.toString());
        _state = _state.copyWith(loading: false);
        _uiEventController
            .add(const CommentPageUiEvent.showToast('네트워크 에러 입니다'));
      },
    );
    notifyListeners();
  }
}
