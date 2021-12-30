import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/data/data_source/remote/login_user_api.dart';
import 'package:virtue_test/domain/model/login_user_model/login_response_model.dart';
import 'package:virtue_test/domain/repository/login_user_repository.dart';

class LoginUserRepositoryImpl implements LoginUserRepository {
  LoginUserApi loginUserApi;
  LoginUserRepositoryImpl(this.loginUserApi);

  @override
  Future<Result<LoginResponseModel>> getLoginUser(
      String username, String password) async {
    //API를 Result 클래스로 제네릭을 줘서 responseModel 이 아닌 result를 줘야한다.
    return await loginUserApi.fetchLoginUser(username, password);
  }
}
