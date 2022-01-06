import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_me_ui_event.freezed.dart';

@freezed
abstract class UserMeUiEvent with _$UserMeUiEvent {
  const factory UserMeUiEvent.showToast(String message) = ShowToast;
}
