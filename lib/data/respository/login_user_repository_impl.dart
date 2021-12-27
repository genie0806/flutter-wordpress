import 'package:virtue_test/data/data_source/remote/login_user_api.dart';
import 'package:virtue_test/domain/model/login_user_model/login_response_model.dart';
import 'package:virtue_test/domain/repository/login_user_repository.dart';

class LoginUserRepositoryImpl implements LoginUserRepository {
  LoginUserApi loginUserApi;
  LoginResponseModel responseModel;
  LoginUserRepositoryImpl(this.loginUserApi, this.responseModel);

  @override
  Future<bool> getLoginUser(String username, String password) async {
    await loginUserApi.fetchLoginUser(username, password);
    if (responseModel.statusCode == 200) {
      return responseModel.success == true;
    } else {
      return responseModel.success == false;
    }
  }
}
