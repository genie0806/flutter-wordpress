import 'dart:async';

import 'package:flutter/material.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_model.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_response_model.dart';
import 'package:virtue_test/domain/use_case/create_user_use_case.dart/create_user_use_cases.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_event.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_state.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_ui_event.dart';

class CreateUserPageViewModel with ChangeNotifier {
  CreateUserUseCases useCases;

  CreateUserPageViewModel({required this.useCases});

  CreateUserState _state = CreateUserState(
    userModel: CreateUserModel(),
  );
  CreateUserState get state => _state;

  final StreamController<CreateUserUiEvent> _uiEventStreamController =
      StreamController.broadcast();
  Stream<CreateUserUiEvent> get uiEventStream =>
      _uiEventStreamController.stream;

  void onEvent(CreateUserEvent event) {
    event.when(
      storeEmail: (email) {
        _state =
            state.copyWith(userModel: state.userModel.copyWith(email: email));
      },
      storePassword: (password) {
        _state = state.copyWith(
            userModel: state.userModel.copyWith(password: password));
      },
      storeConfirmPassword: (confirmPassword) {
        _state = state.copyWith(
            userModel:
                state.userModel.copyWith(confirmPassword: confirmPassword));
      },
      registerUser: () async {
        final result = await useCases.postRegisterUserUseCase(state.userModel);
        result.when(success: (message) {
          _uiEventStreamController.add(ShowSuccessToast(message));
        }, error: (message) {
          _uiEventStreamController.add(ShowErrorToast(message));
        });
      },
      togglePasswordVisibility: () {
        _state = _state.copyWith(hidePassword: !state.hidePassword);
      },
      toggleConfirmPasswordVisibility: () {
        _state =
            _state.copyWith(hideConfirmPassword: !state.hideConfirmPassword);
      },
      //storeConfirmPassword: (String confirmPassword) {},
    );
    notifyListeners();
  }
}
