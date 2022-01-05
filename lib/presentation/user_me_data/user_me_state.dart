import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:virtue_test/domain/model/user_me_model/user_me_model.dart';

part 'user_me_state.freezed.dart';

@freezed
class UserMeState with _$UserMeState {
  factory UserMeState({
    UserMeModel? model,
  }) = _UserMeState;
}
