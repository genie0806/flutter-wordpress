import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_login_state.freezed.dart';

@freezed
class SocialLoginState with _$SocialLoginState {
  factory SocialLoginState({
    bool? googleLoginState,
  }) = _SocialLoginState;
}
