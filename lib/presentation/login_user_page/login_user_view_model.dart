import 'dart:async';

import 'package:flutter/material.dart';
import 'package:virtue_test/domain/use_case/login_user_use_case.dart/login_user_use_cases.dart';
import 'package:virtue_test/presentation/login_user_page/login_user_event.dart';
import 'package:virtue_test/presentation/login_user_page/login_user_state.dart';
import 'package:virtue_test/presentation/login_user_page/login_user_ui_event.dart';

class LoginUserViewModel with ChangeNotifier {
  LoginUserUseCases useCases;

  LoginUserViewModel(this.useCases);

  LoginUserState _state = LoginUserState();
  LoginUserState get state => _state;

  final StreamController<LoginUserUiEvent> _uiEventStreamController =
      StreamController.broadcast();
  Stream<LoginUserUiEvent> get uiEventStream => _uiEventStreamController.stream;

  void onEvent(LoginUserEvent event) async {
    event.when(
      storeUsername: (username) {
        _state = state.copyWith(username: username);
      },
      storePassword: (password) {
        _state = state.copyWith(password: password);
      },
      loginUser: (username, password) async {
        final result = await useCases.getLoginUserUseCase(username, password);
        result.when(success: (message) {
          _uiEventStreamController.add(LoginSuccessToast(message));
        }, error: (message) {
          _uiEventStreamController.add(LoginErrorToast(message));
        });
      },
      togglePasswordVisibility: () {
        _state = _state.copyWith(hidePassword: !state.hidePassword);
      },
    );
    notifyListeners();
  }
}
