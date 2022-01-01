import 'dart:async';

import 'package:flutter/material.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';

import 'package:virtue_test/domain/use_case/comment_get_use_case/comment_get_use_cases.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_state.dart';
import 'package:virtue_test/core/result.dart';
import 'comment_page_event.dart';

class CommentPageViewModel with ChangeNotifier {
  CommentGetUseCases useCases;
  CommentPageViewModel(
    this.useCases,
  );

  CommentPageState _state = CommentPageState();
  CommentPageState get state => _state;

  final _eventController = StreamController<CommentPageEvent>.broadcast();
  Stream<CommentPageEvent> get eventStream => _eventController.stream;

  Future refreshList(int id) async {
    await fetchCommentPage(id);
    notifyListeners();
  }

  Future<void> fetchCommentPage(int id) async {
    final result = await useCases.getCommentUseCase(id);
    result.when(
      success: (resultComment) {
        _state = _state.copyWith(model: resultComment);
        notifyListeners();
      },
      error: (e) {
        print((result as Error).message.toString());
        _eventController.add(const CommentPageEvent.showToast('네트워크 에러 입니다'));
      },
    );
  }
}
