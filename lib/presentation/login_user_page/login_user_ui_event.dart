import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user_ui_event.freezed.dart';

@freezed
abstract class LoginUserUiEvent with _$LoginUserUiEvent {
  const factory LoginUserUiEvent.loginSuccessToast(String message) =
      LoginSuccessToast;
  const factory LoginUserUiEvent.loginErrorToast(String message) =
      LoginErrorToast;
}
