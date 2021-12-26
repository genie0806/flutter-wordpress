import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_login_page_state.freezed.dart';

@freezed
class SocialLoginPageState with _$SocialLoginPageState {
  factory SocialLoginPageState({
    bool? googleLoginState,
  }) = _SocialLoginPageState;
}
