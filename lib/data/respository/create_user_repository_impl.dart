import 'package:virtue_test/data/data_source/remote/create_user_api.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_response_model.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_model.dart';
import 'package:virtue_test/domain/repository/create_user_repository.dart';

class CreateUserRepositoryImpl implements CreateUserRepository {
  @override
  Future<CreateUserResponseModel> postRegisterUser(
      CreateUserModel model) async {
    return await CreateUserAPi.registerUser(model);
  }
}
