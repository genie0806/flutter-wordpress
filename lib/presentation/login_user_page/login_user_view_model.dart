import 'dart:async';

import 'package:flutter/material.dart';
import 'package:virtue_test/domain/model/login_user_model/login_response_model.dart';
import 'package:virtue_test/domain/model/login_user_model/login_user_model.dart';
import 'package:virtue_test/domain/use_case/login_user_use_case.dart/Login_user_use_cases.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_ui_event.dart';
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

  Future<void> onEvent(LoginUserEvent event) async {
    event.when(
      storeUsername: (username) {
        _state = state.copyWith(username: state.username);
      },
      storePassword: (password) {
        _state = state.copyWith(password: state.password);
      },
      loginUser: (username, password) async {
        final result =
            await useCases.getLoginUserUseCase(state.username, state.password);
        result.when(success: (message) {
          true;
          _uiEventStreamController.add(LoginSuccessToast(message));
        }, error: (message) {
          false;
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
