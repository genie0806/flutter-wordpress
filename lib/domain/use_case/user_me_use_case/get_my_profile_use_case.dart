import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/user_me_model/user_me_model.dart';
import 'package:virtue_test/domain/repository/app_config_repository.dart';
import 'package:virtue_test/domain/repository/login_user_repository.dart';
import 'package:virtue_test/domain/repository/user_me_repository.dart';

class GetMyProfileUseCase {
  LoginUserRepository loginUserRepository;
  UserMeRepository userMeRepository;
  AppConfigRepository _appConfigRepository;

  GetMyProfileUseCase(
    this.loginUserRepository,
    this.userMeRepository,
    this._appConfigRepository,
  );

  Future<Result<UserMeModel>> call(String username, String password) async {
    try {
      final loginResponseModel =
          await loginUserRepository.getLoginUser(username, password);

      return loginResponseModel.when(success: (loginResponseModel) async {
        final token = loginResponseModel.data?.token;
        if (token == null) {
          return const Result.error('로그인 토큰이 생성되지않았습니다.');
        }
        return await userMeRepository.getUserMe(token);
      }, error: (message) {
        return const Result.error('로그인 토큰이 생성되지않았습니다.');
      });
    } catch (e) {
      return const Result.error('네트워크가 연결되어있지 않습니다');
    }
  }
}
