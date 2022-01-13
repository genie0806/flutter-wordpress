abstract class SocialLoginRepository {
  Future<bool> getSocialLogin(String userName, String displayName,
      String photoUrl, Function(String? token) callback);

  Future<bool> getSocialLogout(
      String userName, String displayName, String photoUrl);
}
