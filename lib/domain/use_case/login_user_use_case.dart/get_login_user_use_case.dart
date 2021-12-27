import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/login_user_model/login_response_model.dart';
import 'package:virtue_test/domain/repository/login_user_repository.dart';

class GetLoginUserUseCase {
  LoginUserRepository repository;
  LoginResponseModel responseModel;

  GetLoginUserUseCase(this.repository, this.responseModel);

  Future<Result<String>> call(String username, String password) async {
    await repository.getLoginUser(username, password);

    if (responseModel.statusCode == 200) {
      responseModel.success == true;
      return Result.success(responseModel.message ?? "");
    } else {
      responseModel.success == false;
      return Result.error(responseModel.message ?? "");
    }
  }
}
