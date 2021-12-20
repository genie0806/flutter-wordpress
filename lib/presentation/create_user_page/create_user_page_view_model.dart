import 'package:flutter/material.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_model.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_status_model.dart';
import 'package:virtue_test/domain/use_case/create_user_use_case.dart/create_user_use_cases.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_state.dart';

class CreateUserPageViewModel with ChangeNotifier {
  CreateUserUseCases useCases;

  CreateUserState _createUserState = CreateUserState();
  CreateUserState get createUserState => _createUserState;

  CreateUserPageViewModel(this.useCases);

  Future<CreateUserStatusModel?> creteUser(CreateUserModel model) async {
    final result = await useCases.postRegisterUserUseCase(model);

    notifyListeners();
  }
}
