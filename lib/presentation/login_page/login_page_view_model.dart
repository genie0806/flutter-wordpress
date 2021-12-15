import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:virtue_test/data/data_source/remote/social_login_api.dart';
import 'package:virtue_test/domain/model/social_user_model/social_user_model.dart';

import 'package:virtue_test/domain/use_case/login_use_case.dart/login_use_cases.dart';
import 'package:virtue_test/presentation/login_page/login_page_state.dart';

class LoginViewModel with ChangeNotifier {
  LoginUseCases useCases;
  GoogleSignIn googleSignIn = GoogleSignIn();

  LoginPageState _loginState = LoginPageState();
  LoginPageState get loginState => _loginState;

  LoginViewModel(
    this.useCases,
  );

  GoogleSignInAccount? googleSignInAccount;
  SocialUserModel? socialUserModel;
  SocialLoginApi? socialLoginApi = SocialLoginApi();

  Future<void> googleLogin() async {
    await useCases.getSocialLogin(socialUserModel?.email ?? '');

    notifyListeners();
  }

  Future<void> googleLogout() async {
    googleSignInAccount = await googleSignIn.signOut();
    //useCases.getSocialLogout;
    socialUserModel = null;
    notifyListeners();
  }
}
