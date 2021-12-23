import 'package:virtue_test/domain/model/create_user_model/create_user_model.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_response_model.dart';

abstract class CreateUserRepository {
  Future<CreateUserResponseModel> postRegisterUser(CreateUserModel model);
}
