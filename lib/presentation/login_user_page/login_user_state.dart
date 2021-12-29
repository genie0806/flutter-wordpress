import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:virtue_test/domain/model/login_user_model/login_user_model.dart';

part 'login_user_state.freezed.dart';

@freezed
class LoginUserState with _$LoginUserState {
  factory LoginUserState({
    @Default("") String username,
    @Default("") String password,
    @Default(true) bool hidePassword,
  }) = _LoginUserState;
}
flutter pub run build_runner build
