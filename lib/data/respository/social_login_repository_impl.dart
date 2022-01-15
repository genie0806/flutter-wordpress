import 'dart:convert';

import 'package:virtue_test/core/result.dart';
import 'package:virtue_test/data/data_source/remote/social_login_api.dart';
import 'package:virtue_test/domain/repository/social_login_repository.dart';

class SocialLoginRepositoryImpl implements SocialLoginRepository {
  SocialLoginApi socialLoginApi;
  SocialLoginRepositoryImpl(
    this.socialLoginApi,
  );

  @override
  Future<bool> getSocialLogin(
      String userName, Function(String? token) callback) async {
    final response = await socialLoginApi.fetchSocialLogin(userName);

    callback(jsonDecode(response.body)['data']['token']);

    return response.statusCode == 200 ? true : false;
  }

  @override
  Future<bool> getSocialLogout(String userName) async {
    final response = await socialLoginApi.fetchSocialLogin(userName);
    return response.statusCode == 200 ? true : false;
  }
}
