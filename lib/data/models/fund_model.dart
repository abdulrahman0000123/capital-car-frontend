import 'package:freezed_annotation/freezed_annotation.dart';

part 'fund_model.freezed.dart';
part 'fund_model.g.dart';

@freezed
class FundModel with _$FundModel {
  const factory FundModel({
    required String id,
    required double currentBalance,
    required double minLimit,
    required double maxLimit,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _FundModel;

  factory FundModel.fromJson(Map<String, dynamic> json) => 
      _$FundModelFromJson(json);
}

@freezed
class FundTransactionModel with _$FundTransactionModel {
  const factory FundTransactionModel({
    required String id,
    required String fundId,
    String? weekId,
    String? fineId,
    required String type,
    required double amount,
    required String reason,
    required double balanceBefore,
    required double balanceAfter,
    required String createdBy,
    required DateTime createdAt,
  }) = _FundTransactionModel;

  factory FundTransactionModel.fromJson(Map<String, dynamic> json) => 
      _$FundTransactionModelFromJson(json);
}
