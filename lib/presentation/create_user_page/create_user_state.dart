import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:virtue_test/domain/model/create_user_model/create_user_model.dart';

part 'create_user_state.freezed.dart';

@freezed
class CreateUserState with _$CreateUserState {
  factory CreateUserState({
    CreateUserModel? createUser,
  }) = _CreateUserState;
}
