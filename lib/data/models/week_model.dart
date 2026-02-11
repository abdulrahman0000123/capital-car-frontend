import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_model.freezed.dart';
part 'week_model.g.dart';

@freezed
class WeekModel with _$WeekModel {
  const factory WeekModel({
    required String id,
    required int weekNumber,
    required int year,
    required DateTime startDate,
    required DateTime endDate,
    required String status,
    required double driverSalary,
    required double totalGuestsIncome,
    required double totalFines,
    required double finesToFund,
    required double finesToCalculation,
    required double fundDeductions,
    required double perPassengerAmount,
    required int activePassengersCount,
    required double fundBalanceStart,
    required double fundBalanceEnd,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _WeekModel;

  factory WeekModel.fromJson(Map<String, dynamic> json) => 
      _$WeekModelFromJson(json);
}

@freezed
class WeekDetailModel with _$WeekDetailModel {
  const factory WeekDetailModel({
    required WeekModel week,
    required List<GuestVisitModel> guests,
    required List<FineModel> fines,
    required List<PaymentModel> payments,
  }) = _WeekDetailModel;

  factory WeekDetailModel.fromJson(Map<String, dynamic> json) => 
      _$WeekDetailModelFromJson(json);
}

// Simple models for nested data
@freezed
class GuestVisitModel with _$GuestVisitModel {
  const factory GuestVisitModel({
    required String id,
    required String weekId,
    required String guestName,
    required DateTime date,
    required String dayOfWeek,
    required double amount,
    String? invitedById,
    String? notes,
  }) = _GuestVisitModel;

  factory GuestVisitModel.fromJson(Map<String, dynamic> json) => 
      _$GuestVisitModelFromJson(json);
}

@freezed
class FineModel with _$FineModel {
  const factory FineModel({
    required String id,
    required String weekId,
    required String passengerId,
    required String passengerName,
    required DateTime date,
    required String dayOfWeek,
    required double amount,
    required String reason,
    required String destination,
    required double amountToFund,
    required double amountToCalc,
    String? notes,
  }) = _FineModel;

  factory FineModel.fromJson(Map<String, dynamic> json) => 
      _$FineModelFromJson(json);
}

@freezed
class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    required String id,
    required String weekId,
    required String passengerId,
    required String passengerName,
    required double amount,
    required DateTime date,
    required String status,
    required String paymentMethod,
    String? confirmedBy,
    String? notes,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) => 
      _$PaymentModelFromJson(json);
}
