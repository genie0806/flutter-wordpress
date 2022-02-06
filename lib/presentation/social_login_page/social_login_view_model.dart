import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:virtue_test/domain/model/social_login_model/social_user_model.dart';
import 'package:virtue_test/domain/use_case/social_login_use_case.dart/login_use_cases.dart';
import 'package:virtue_test/presentation/social_login_page/social_login_state.dart';
import 'package:virtue_test/presentation/social_login_page/social_login_ui_event.dart';

class SocialLoginViewModel with ChangeNotifier {
  SocialLoginUseCases useCases;
  GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleAccount;

  final SocialLoginState _loginState = SocialLoginState();
  SocialLoginState get loginState => _loginState;

  final _eventController = StreamController<SocialLoginUiEvent>.broadcast();
  Stream<SocialLoginUiEvent> get eventStream => _eventController.stream;

  SocialLoginViewModel(
    this.useCases,
  );

  SocialUserModel? socialUserModel;

  Future<bool> isLogined() async {
    return useCases.getLoginStatusUseCase();
  }

  Future<void> googleLogin() async {
    final result = await useCases.getSocialLogin(socialUserModel?.email ?? '');
    if (result) {
      _eventController.add(
          const SocialLoginUiEvent.loginSuccessToast("구글 계정으로 로그인 하였습니다."));
    } else {
      _eventController.add(
          const SocialLoginUiEvent.loginErrorToast("구글 계정으로 로그인에 실패하였습니다."));
    }
  }

  Future<bool> googleLogout() async {
    return useCases.getSocialLogout(socialUserModel?.email ?? '');
  }
}
