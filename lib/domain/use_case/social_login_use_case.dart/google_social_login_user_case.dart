import 'package:virtue_test/data/data_source/remote/social_login_api.dart';
import 'package:virtue_test/domain/model/social_login_model/social_user_model.dart';
import 'package:virtue_test/domain/repository/app_config_repository.dart';
import 'package:virtue_test/domain/repository/social_login_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSocialLoginUseCase {
  final SocialLoginRepository repository;
  final AppConfigRepository _appConfigRepository;

  GoogleSocialLoginUseCase(this.repository, this._appConfigRepository);

  GoogleSignInAccount? googleAccount;
  SocialUserModel? socialUserModel;
  SocialLoginApi socialLoginApi = SocialLoginApi();
  GoogleSignIn googleSignIn = GoogleSignIn();

  Future<bool> call(String userName) async {
    googleAccount = await googleSignIn.signIn();
    socialUserModel = SocialUserModel(
        email: googleAccount?.email,
        displayName: googleAccount?.displayName,
        photoUrl: googleAccount?.photoUrl);
    return await repository.getSocialLogin(
      socialUserModel?.email ?? '',
      (token) {
        _appConfigRepository.setToken(token);
        _appConfigRepository.setAutoLogin(true);
        _appConfigRepository.setUsername(googleAccount?.email ?? '');
      },
    );
  }
}
