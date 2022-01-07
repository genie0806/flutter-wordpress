import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/domain/model/user_me_model/user_me_model.dart';

abstract class UserMeRepository {
  Future<Result<UserMeModel>> getUserMe();
}
