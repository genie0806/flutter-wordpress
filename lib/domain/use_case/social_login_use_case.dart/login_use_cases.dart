import 'package:virtue_test/domain/use_case/social_login_use_case.dart/google_social_login.dart';
import 'package:virtue_test/domain/use_case/social_login_use_case.dart/goole_social_logout.dart';

class SocialLoginUseCases {
  final GoogleSocialLogout getSocialLogout;
  final GoogleSocialLogin getSocialLogin;

  SocialLoginUseCases(
      {required this.getSocialLogout, required this.getSocialLogin});
}
