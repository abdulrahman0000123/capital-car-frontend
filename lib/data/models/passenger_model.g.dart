// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PassengerModelImpl _$$PassengerModelImplFromJson(Map<String, dynamic> json) =>
    _$PassengerModelImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      workplace: json['workplace'] as String,
      isPrimary: json['isPrimary'] as bool,
      joinDate: DateTime.parse(json['joinDate'] as String),
      totalPaid: (json['totalPaid'] as num).toDouble(),
      avatarUrl: json['avatarUrl'] as String?,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PassengerModelImplToJson(
        _$PassengerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'phone': instance.phone,
      'workplace': instance.workplace,
      'isPrimary': instance.isPrimary,
      'joinDate': instance.joinDate.toIso8601String(),
      'totalPaid': instance.totalPaid,
      'avatarUrl': instance.avatarUrl,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
