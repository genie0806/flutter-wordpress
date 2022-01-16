abstract class SocialLoginRepository {
  Future<bool> getSocialLogin(
      String userName, Function(String? token) callback);

  Future<bool> getSocialLogout(String userName);
}
