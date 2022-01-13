import 'dart:convert';

import 'package:virtue_test/data/data_source/remote/social_login_api.dart';
import 'package:virtue_test/domain/repository/social_login_repository.dart';

class SocialLoginRepositoryImpl implements SocialLoginRepository {
  SocialLoginApi socialLoginApi;
  SocialLoginRepositoryImpl(
    this.socialLoginApi,
  );

  @override
  Future<bool> getSocialLogin(String userName, String displayName,
      String photoUrl, Function(String? token) callback) async {
    final response = await socialLoginApi.fetchSocialLogin(
      userName,
      displayName,
      photoUrl,
    );

    callback(jsonDecode(response.body)['data']['token']);

    return response.statusCode == 200 ? true : false;
  }

  @override
  Future<bool> getSocialLogout(
      String userName, String displayName, String photoUrl) async {
    final response =
        await socialLoginApi.fetchSocialLogin(userName, displayName, photoUrl);
    return response.statusCode == 200 ? true : false;
  }
}
