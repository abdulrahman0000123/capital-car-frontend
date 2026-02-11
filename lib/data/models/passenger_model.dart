import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger_model.freezed.dart';
part 'passenger_model.g.dart';

@freezed
class PassengerModel with _$PassengerModel {
  const factory PassengerModel({
    required String id,
    required String userId,
    required String name,
    required String phone,
    required String workplace,
    required bool isPrimary,
    required DateTime joinDate,
    required double totalPaid,
    String? avatarUrl,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PassengerModel;

  factory PassengerModel.fromJson(Map<String, dynamic> json) => 
      _$PassengerModelFromJson(json);
}
