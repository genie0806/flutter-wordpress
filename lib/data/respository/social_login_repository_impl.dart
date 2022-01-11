import 'package:virtue_test/data/data_source/remote/social_login_api.dart';
import 'package:virtue_test/domain/repository/social_login_repository.dart';

class SocialLoginRepositoryImpl implements SocialLoginRepository {
  SocialLoginApi socialLoginApi;
  SocialLoginRepositoryImpl(
    this.socialLoginApi,
  );

  @override
  Future<bool> getSocialLogin(
      String userName, String displayName, String photoUrl) async {
    return socialLoginApi.fetchSocialLogin(userName, displayName, photoUrl);
  }

  @override
  Future<bool> getSocialLogout(
      String userName, String displayName, String photoUrl) async {
    return socialLoginApi.fetchSocialLogin(userName, displayName, photoUrl);
  }
}
