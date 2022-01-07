import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/user_me_model/user_me_model.dart';
import 'package:virtue_test/domain/repository/user_me_repository.dart';

class GetUserMeUseCase {
  UserMeRepository repository;

  GetUserMeUseCase(this.repository);

  Future<Result<UserMeModel>> call(String token) async {
    return await repository.getUserMe(token);
  }
}
