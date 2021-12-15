import 'package:flutter/material.dart';

import 'package:virtue_test/domain/use_case/login_use_case.dart/login_use_cases.dart';

class SocialLoginViewModel with ChangeNotifier {
  final LoginUseCases useCases;

  SocialLoginViewModel(
    this.useCases,
  );

  Future googleLogin() async {
    notifyListeners();
  }

  logOut() async {
    notifyListeners();
  }
}
