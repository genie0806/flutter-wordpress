import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_ui_event.freezed.dart';

@freezed
abstract class CreateUserUiEvent with _$CreateUserUiEvent {
  const factory CreateUserUiEvent.showSuccessToast(String message) =
      ShowSuccessToast;
  const factory CreateUserUiEvent.showErrorToast(String message) =
      ShowErrorToast;
}
