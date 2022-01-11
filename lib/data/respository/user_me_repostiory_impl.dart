import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/data/data_source/remote/user_me_api.dart';
import 'package:virtue_test/domain/model/user_me_model/user_me_model.dart';
import 'package:virtue_test/domain/repository/user_me_repository.dart';

class UserMeRepositoryImpl implements UserMeRepository {
  UserMeApi userMeApi;

  UserMeRepositoryImpl(
    this.userMeApi,
  );

  @override
  Future<Result<UserMeModel>> getUserMe(token) async {
    return await userMeApi.fetchUserMe(token);
  }
}
