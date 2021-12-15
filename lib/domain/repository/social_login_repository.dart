abstract class SocialLoginRepository {
  Future<bool> getSocialLogin(String userName);

  Future<bool> getSocialLogout(String userName);
}
