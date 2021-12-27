import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_model.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_response_model.dart';
import 'package:virtue_test/domain/repository/create_user_repository.dart';

class PostRegisterUserUseCase {
  CreateUserRepository repository;

  PostRegisterUserUseCase(this.repository);

  Future<Result<String>> call(CreateUserModel model) async {
    CreateUserResponseModel responseModel =
        await repository.postRegisterUser(model);

    if (responseModel.code == 200) {
      return Result.success(responseModel.message ?? "");
    } else {
      return Result.error(responseModel.message ?? "");
    }
  }
}
