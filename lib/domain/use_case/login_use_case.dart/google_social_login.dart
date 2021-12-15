import 'package:virtue_test/data/data_source/remote/social_login_api.dart';
import 'package:virtue_test/domain/model/social_user_model/social_user_model.dart';
import 'package:virtue_test/domain/repository/social_login_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSocialLogin {
  SocialLoginRepository repository;

  GoogleSocialLogin(this.repository);

  GoogleSignInAccount? googleAccount;
  SocialUserModel? socialUserModel;
  final SocialLoginApi socialLoginApi = SocialLoginApi();
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<bool> call(String userName) async {
    googleAccount = await googleSignIn.signIn();
    socialUserModel = SocialUserModel(
        displayName: googleAccount!.displayName,
        email: googleAccount!.email,
        photoUrl: googleAccount!.photoUrl);
    await socialLoginApi.fetchSocialLogin(socialUserModel!.email ?? '');
    return await repository.getSocialLogin(userName);
  }
}
