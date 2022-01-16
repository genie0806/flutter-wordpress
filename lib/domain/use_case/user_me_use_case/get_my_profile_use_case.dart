import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/user_me_model/user_me_model.dart';
import 'package:virtue_test/domain/repository/app_config_repository.dart';
import 'package:virtue_test/domain/repository/login_user_repository.dart';
import 'package:virtue_test/domain/repository/user_me_repository.dart';

class GetMyProfileUseCase {
  final LoginUserRepository loginUserRepository;
  final UserMeRepository userMeRepository;
  final AppConfigRepository _appConfigRepository;

  GetMyProfileUseCase(
    this.loginUserRepository,
    this.userMeRepository,
    this._appConfigRepository,
  );

  Future<Result<UserMeModel>> call() async {
    try {
      String? token = await _appConfigRepository.getToken();
      if (token == null) {
        final username = await _appConfigRepository.getUsername();
        final password = await _appConfigRepository.getPassword();

        if (username != null && password != null) {
          final loginResponseModelResult =
              await loginUserRepository.getLoginUser(username, password);

          loginResponseModelResult.when(success: (loginResponseModel) {
            token = loginResponseModel.data?.token;
          }, error: (message) {
            return Result.error(message);
          });
        } else {
          return const Result.error('자동로그인 과정에서 오류가 발생하였습니다.');
        }
      }
      if (token == null) {
        return const Result.error('로그인 토큰이 생성되지않았습니다.');
      }
      return await userMeRepository.getUserMe(token);
    } catch (e) {
      return const Result.error('네트워크가 연결되어있지 않습니다');
    }
  }
}
