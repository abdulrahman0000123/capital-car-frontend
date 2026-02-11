// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fund_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FundModelImpl _$$FundModelImplFromJson(Map<String, dynamic> json) =>
    _$FundModelImpl(
      id: json['id'] as String,
      currentBalance: (json['currentBalance'] as num).toDouble(),
      minLimit: (json['minLimit'] as num).toDouble(),
      maxLimit: (json['maxLimit'] as num).toDouble(),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$FundModelImplToJson(_$FundModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentBalance': instance.currentBalance,
      'minLimit': instance.minLimit,
      'maxLimit': instance.maxLimit,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$FundTransactionModelImpl _$$FundTransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FundTransactionModelImpl(
      id: json['id'] as String,
      fundId: json['fundId'] as String,
      weekId: json['weekId'] as String?,
      fineId: json['fineId'] as String?,
      type: json['type'] as String,
      amount: (json['amount'] as num).toDouble(),
      reason: json['reason'] as String,
      balanceBefore: (json['balanceBefore'] as num).toDouble(),
      balanceAfter: (json['balanceAfter'] as num).toDouble(),
      createdBy: json['createdBy'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$FundTransactionModelImplToJson(
        _$FundTransactionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fundId': instance.fundId,
      'weekId': instance.weekId,
      'fineId': instance.fineId,
      'type': instance.type,
      'amount': instance.amount,
      'reason': instance.reason,
      'balanceBefore': instance.balanceBefore,
      'balanceAfter': instance.balanceAfter,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toIso8601String(),
    };
