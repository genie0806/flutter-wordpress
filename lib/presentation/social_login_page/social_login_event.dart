import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_login_event.freezed.dart';

@freezed
abstract class SocialLoginEvent with _$SocialLoginEvent {
  const factory SocialLoginEvent.socialLogin() = SocialLogin;
}
