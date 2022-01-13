import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:virtue_test/core/result.dart';

import 'package:virtue_test/domain/use_case/user_me_use_case/get_user_me_use_case.dart';
import 'package:virtue_test/domain/use_case/user_me_use_case/user_me_use_cases.dart';
import 'package:virtue_test/presentation/user_me_data/user_me_event.dart';
import 'package:virtue_test/presentation/user_me_data/user_me_state.dart';
import 'package:virtue_test/presentation/user_me_data/user_me_ui_event.dart';

class UserMeViewModel with ChangeNotifier {
  final UserMeUseCases useCases;
  UserMeViewModel(
    this.useCases,
  );

  UserMeState _state = UserMeState();
  UserMeState get state => _state;

  final _eventController = StreamController<UserMeUiEvent>.broadcast();
  Stream<UserMeUiEvent> get eventStream => _eventController.stream;

  Future<void> fetchGetProfile(username, password) async {
    final result = await useCases.getMyProfileUseCase(username, password);
    result.when(
      success: (resultUserMe) {
        _state = _state.copyWith(model: resultUserMe);
        notifyListeners();
      },
      error: (e) {
        print((result as Error).message.toString());
        _eventController
            .add(const UserMeUiEvent.showToast('유저정보를 가져올 수 없습니다.'));
      },
    );
  }

  void onEvent(UserMeEvent event) async {
    event.when(
      storeUsername: (username) {
        _state = state.copyWith(username: username);
      },
      storePassword: (password) {
        _state = state.copyWith(password: password);
      },
      getProfileUser: (username, password) async {
        final result = useCases.getMyProfileUseCase(username, password);
      },
    );
    notifyListeners();
  }
}
