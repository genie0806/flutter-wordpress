import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user_event.freezed.dart';

@freezed
abstract class LoginUserEvent with _$LoginUserEvent {
  const factory LoginUserEvent.storeUsername(String usename) = StoreUsername;
  const factory LoginUserEvent.storePassword(String password) = StorePassword;
  const factory LoginUserEvent.loginUser() = LoginUser;
  const factory LoginUserEvent.togglePasswordVisibility() =
      TogglePasswordVisibility;
}
