import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_login_ui_event.freezed.dart';

@freezed
abstract class SocialLoginUiEvent with _$SocialLoginUiEvent {
  const factory SocialLoginUiEvent.loginSuccessToast(String message) =
      SocialLoginSuccessToast;
  const factory SocialLoginUiEvent.loginErrorToast(String message) =
      SocialLoginErrorToast;
}
