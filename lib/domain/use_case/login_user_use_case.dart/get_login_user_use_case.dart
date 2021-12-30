import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/repository/login_user_repository.dart';

class GetLoginUserUseCase {
  LoginUserRepository repository;

  GetLoginUserUseCase(this.repository);

  Future<Result<String>> call(String username, String password) async {
    final result = await repository.getLoginUser(username, password);

//성공이면 200 이니까
    return result.when(success: (responseModel) {
      return Result.success(responseModel.message ?? '');
    }, error: (message) {
      return Result.error(message);
    });
  }
}
