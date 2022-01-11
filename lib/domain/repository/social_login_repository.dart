abstract class SocialLoginRepository {
  Future<bool> getSocialLogin(
      String userName, String displayName, String photoUrl);

  Future<bool> getSocialLogout(
      String userName, String displayName, String photoUrl);
}
