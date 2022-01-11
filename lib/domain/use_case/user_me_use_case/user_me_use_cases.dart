import 'package:virtue_test/domain/use_case/user_me_use_case/get_my_profile_use_case.dart';
import 'package:virtue_test/domain/use_case/user_me_use_case/get_user_me_use_case.dart';

class UserMeUseCases {
  final GetUserMeUseCase getUserMeUseCase;
  final GetMyProfileUseCase getMyProfileUseCase;

  UserMeUseCases({
    required this.getUserMeUseCase,
    required this.getMyProfileUseCase,
  });
}
