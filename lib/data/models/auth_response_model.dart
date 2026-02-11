import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    required String token,
    required String refreshToken,
    required UserData user,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) => 
      _$AuthResponseModelFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String id,
    required String username,
    required String email,
    required String role,
    required String status,
    String? avatarUrl,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => 
      _$UserDataFromJson(json);
}
