abstract class LoginUserRepository {
  Future<bool> getLoginUser(String username, String password);
}
