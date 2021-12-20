import 'package:virtue_test/domain/model/create_user_model/create_user_model.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_status_model.dart';
import 'package:virtue_test/domain/repository/create_user_repository.dart';

class PostRegisterUserUseCase {
  CreateUserRepository repository;

  PostRegisterUserUseCase(this.repository);

  Future<CreateUserStatusModel> call(CreateUserModel model) async {
    return await repository.postRegisterUser(model);
  }
}
