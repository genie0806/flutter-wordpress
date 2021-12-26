import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'social_user_model.freezed.dart';
part 'social_user_model.g.dart';

@freezed
class SocialUserModel with _$SocialUserModel {
  factory SocialUserModel({
    String? displayName,
    String? email,
    String? photoUrl,
  }) = _SocialUserModel;
  factory SocialUserModel.fromJson(Map<String, dynamic> json) =>
      _$SocialUserModelFromJson(json);
}
