import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:virtue_test/domain/model/social_login_model/social_user_model.dart';
import 'package:virtue_test/domain/use_case/social_login_use_case.dart/login_use_cases.dart';
import 'package:virtue_test/presentation/social_login_page/social_login_page_state.dart';

class SocialLoginViewModel with ChangeNotifier {
  SocialLoginUseCases useCases;
  GoogleSignIn googleSignIn = GoogleSignIn();

  final SocialLoginPageState _loginState = SocialLoginPageState();
  SocialLoginPageState get loginState => _loginState;

  SocialLoginViewModel(
    this.useCases,
  );

  SocialUserModel? socialUserModel;

  Future<void> googleLogin() async {
    await useCases.getSocialLogin(socialUserModel?.email ?? '');
    notifyListeners();
  }

  Future<void> googleLogout() async {
    //googleSignInAccount = await googleSignIn.signOut();
    useCases.getSocialLogout;
    socialUserModel = null;
    notifyListeners();
  }
}
