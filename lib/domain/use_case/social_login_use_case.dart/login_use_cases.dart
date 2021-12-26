import 'package:virtue_test/domain/use_case/social_login_use_case.dart/google_social_login.dart';
import 'package:virtue_test/domain/use_case/social_login_use_case.dart/goole_social_logout.dart';

class LoginUseCases {
  final GoogleSocialLogout getSocialLogout;
  final GoogleSocialLogin getSocialLogin;

  LoginUseCases({required this.getSocialLogout, required this.getSocialLogin});
}
