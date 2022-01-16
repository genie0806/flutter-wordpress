import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:virtue_test/domain/model/social_login_model/social_user_model.dart';
import 'package:virtue_test/domain/use_case/social_login_use_case.dart/login_use_cases.dart';
import 'package:virtue_test/presentation/social_login_page/social_login_state.dart';

class SocialLoginViewModel with ChangeNotifier {
  SocialLoginUseCases useCases;
  GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleAccount;

  final SocialLoginState _loginState = SocialLoginState();
  SocialLoginState get loginState => _loginState;

  SocialLoginViewModel(
    this.useCases,
  );

  SocialUserModel? socialUserModel;

  Future<bool> isLogined() async {
    return useCases.getLoginStatusUseCase();
  }

  Future<bool> googleLogin() async {
    return await useCases.getSocialLogin(socialUserModel?.email ?? '');
  }

  Future<bool> googleLogout() async {
    return useCases.getSocialLogout(socialUserModel?.email ?? '');
  }
}
