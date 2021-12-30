import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/login_user_model/login_response_model.dart';

abstract class LoginUserRepository {
  Future<Result<LoginResponseModel>> getLoginUser(
      String username, String password);
}
