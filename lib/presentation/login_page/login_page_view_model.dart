import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:virtue_test/data/data_source/remote/social_login_api.dart';
import 'package:virtue_test/domain/model/social_user_model/social_user_model.dart';

class GoogleSign with ChangeNotifier {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleAccount;
  SocialUserModel? socialUserModel;
  SocialLoginApi socialLoginApi = SocialLoginApi();

  googleLogin() async {
    this.googleAccount = await _googleSignIn.signIn();
    this.socialUserModel = SocialUserModel(
        displayName: this.googleAccount!.displayName,
        email: this.googleAccount!.email,
        photoUrl: this.googleAccount!.photoUrl);
    await socialLoginApi.fetchSocialLogin(socialUserModel!.email ?? '');
    notifyListeners();
  }

  logOut() async {
    this.googleAccount = await _googleSignIn.signOut();

    notifyListeners();
  }
}
