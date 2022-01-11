import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_me_event.freezed.dart';

@freezed
abstract class UserMeEvent with _$UserMeEvent {
  const factory UserMeEvent.storeUsername(String username) = StoreProfileUser;
  const factory UserMeEvent.storePassword(String password) =
      StoreProfilePassword;
  const factory UserMeEvent.getProfileUser(String username, String password) =
      GetProfileUser;
}
