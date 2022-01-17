import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/repository/app_config_repository.dart';
import 'package:virtue_test/domain/repository/login_user_repository.dart';

class GetLoginUserUseCase {
  final LoginUserRepository _loginUseRepository;
  final AppConfigRepository _appConfigRepository;

  GetLoginUserUseCase(this._loginUseRepository, this._appConfigRepository);

  Future<Result<String>> call(String username, String password) async {
    final result = await _loginUseRepository.getLoginUser(username, password);

//성공이면 200 이니까
    return result.when(success: (responseModel) {
      //토큰저장
      _appConfigRepository.setAutoLogin(true);
      _appConfigRepository.setToken(responseModel.data?.token);
      _appConfigRepository.setUsername(username);
      _appConfigRepository.setUsername(password);

      return Result.success(responseModel.message ?? '');
    }, error: (message) {
      return Result.error(message);
    });
  }
}
