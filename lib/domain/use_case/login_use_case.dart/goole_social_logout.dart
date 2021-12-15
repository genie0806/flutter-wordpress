import 'package:google_sign_in/google_sign_in.dart';
import 'package:virtue_test/domain/repository/social_login_repository.dart';

class GoogleSocialLogout {
  SocialLoginRepository repository;

  GoogleSocialLogout(this.repository);

  GoogleSignInAccount? googleAccount;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<bool> call(String userName) async {
    googleAccount = await googleSignIn.signOut();

    return repository.getSocialLogin(userName);
  }
}
