import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_event.freezed.dart';

@freezed
abstract class CreateUserEvent with _$CreateUserEvent {
  const factory CreateUserEvent.storeEmail(String email) = StoreEmail;
  const factory CreateUserEvent.storePassword(String password) = StorePassword;
  const factory CreateUserEvent.storeConfirmPassword(String confirmPassword) =
      StoreConfirmPassword;
  const factory CreateUserEvent.registerUser() = RegisterUser;
  const factory CreateUserEvent.togglePasswordVisibility() =
      TogglePasswordVisibility;
  const factory CreateUserEvent.toggleConfirmPasswordVisibility() =
      ToggleConfirmPasswordVisibility;
}
