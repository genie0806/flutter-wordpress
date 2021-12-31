import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_user_state.freezed.dart';

@freezed
class LoginUserState with _$LoginUserState {
  factory LoginUserState({
    @Default("") String username,
    @Default("") String password,
    @Default(true) bool hidePassword,
  }) = _LoginUserState;
}
