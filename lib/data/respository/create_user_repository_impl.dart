import 'package:virtue_test/data/data_source/remote/create_user_api.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_status_model.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_model.dart';
import 'package:virtue_test/domain/repository/create_user_repository.dart';

class CreateUserRepositoryImpl implements CreateUserRepository {
  CreateUserAPi createUserAPi;

  CreateUserRepositoryImpl(this.createUserAPi);

  @override
  Future<CreateUserStatusModel> postRegisterUser(CreateUserModel model) async {
    return createUserAPi.fetchRegisterUser(model);
  }
}
