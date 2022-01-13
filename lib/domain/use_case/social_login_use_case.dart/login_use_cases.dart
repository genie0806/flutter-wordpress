import 'package:virtue_test/domain/use_case/social_login_use_case.dart/google_social_login_user_case.dart';
import 'package:virtue_test/domain/use_case/social_login_use_case.dart/goole_social_logout_use_case.dart';
import 'package:virtue_test/domain/use_case/user_me_use_case/get_login_status_use_case.dart';

class SocialLoginUseCases {
  final GoogleSocialLogoutUseCase getSocialLogout;
  final GoogleSocialLoginUseCase getSocialLogin;
  final GetLoginStatusUseCase getLoginStatusUseCase;

  SocialLoginUseCases(
      {required this.getSocialLogout,
      required this.getSocialLogin,
      required this.getLoginStatusUseCase});
}
