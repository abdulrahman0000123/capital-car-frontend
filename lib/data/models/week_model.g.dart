// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekModelImpl _$$WeekModelImplFromJson(Map<String, dynamic> json) =>
    _$WeekModelImpl(
      id: json['id'] as String,
      weekNumber: (json['weekNumber'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      status: json['status'] as String,
      driverSalary: (json['driverSalary'] as num).toDouble(),
      totalGuestsIncome: (json['totalGuestsIncome'] as num).toDouble(),
      totalFines: (json['totalFines'] as num).toDouble(),
      finesToFund: (json['finesToFund'] as num).toDouble(),
      finesToCalculation: (json['finesToCalculation'] as num).toDouble(),
      fundDeductions: (json['fundDeductions'] as num).toDouble(),
      perPassengerAmount: (json['perPassengerAmount'] as num).toDouble(),
      activePassengersCount: (json['activePassengersCount'] as num).toInt(),
      fundBalanceStart: (json['fundBalanceStart'] as num).toDouble(),
      fundBalanceEnd: (json['fundBalanceEnd'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$WeekModelImplToJson(_$WeekModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weekNumber': instance.weekNumber,
      'year': instance.year,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'status': instance.status,
      'driverSalary': instance.driverSalary,
      'totalGuestsIncome': instance.totalGuestsIncome,
      'totalFines': instance.totalFines,
      'finesToFund': instance.finesToFund,
      'finesToCalculation': instance.finesToCalculation,
      'fundDeductions': instance.fundDeductions,
      'perPassengerAmount': instance.perPassengerAmount,
      'activePassengersCount': instance.activePassengersCount,
      'fundBalanceStart': instance.fundBalanceStart,
      'fundBalanceEnd': instance.fundBalanceEnd,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$WeekDetailModelImpl _$$WeekDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekDetailModelImpl(
      week: WeekModel.fromJson(json['week'] as Map<String, dynamic>),
      guests: (json['guests'] as List<dynamic>)
          .map((e) => GuestVisitModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      fines: (json['fines'] as List<dynamic>)
          .map((e) => FineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      payments: (json['payments'] as List<dynamic>)
          .map((e) => PaymentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeekDetailModelImplToJson(
        _$WeekDetailModelImpl instance) =>
    <String, dynamic>{
      'week': instance.week,
      'guests': instance.guests,
      'fines': instance.fines,
      'payments': instance.payments,
    };

_$GuestVisitModelImpl _$$GuestVisitModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GuestVisitModelImpl(
      id: json['id'] as String,
      weekId: json['weekId'] as String,
      guestName: json['guestName'] as String,
      date: DateTime.parse(json['date'] as String),
      dayOfWeek: json['dayOfWeek'] as String,
      amount: (json['amount'] as num).toDouble(),
      invitedById: json['invitedById'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$GuestVisitModelImplToJson(
        _$GuestVisitModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weekId': instance.weekId,
      'guestName': instance.guestName,
      'date': instance.date.toIso8601String(),
      'dayOfWeek': instance.dayOfWeek,
      'amount': instance.amount,
      'invitedById': instance.invitedById,
      'notes': instance.notes,
    };

_$FineModelImpl _$$FineModelImplFromJson(Map<String, dynamic> json) =>
    _$FineModelImpl(
      id: json['id'] as String,
      weekId: json['weekId'] as String,
      passengerId: json['passengerId'] as String,
      passengerName: json['passengerName'] as String,
      date: DateTime.parse(json['date'] as String),
      dayOfWeek: json['dayOfWeek'] as String,
      amount: (json['amount'] as num).toDouble(),
      reason: json['reason'] as String,
      destination: json['destination'] as String,
      amountToFund: (json['amountToFund'] as num).toDouble(),
      amountToCalc: (json['amountToCalc'] as num).toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$FineModelImplToJson(_$FineModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weekId': instance.weekId,
      'passengerId': instance.passengerId,
      'passengerName': instance.passengerName,
      'date': instance.date.toIso8601String(),
      'dayOfWeek': instance.dayOfWeek,
      'amount': instance.amount,
      'reason': instance.reason,
      'destination': instance.destination,
      'amountToFund': instance.amountToFund,
      'amountToCalc': instance.amountToCalc,
      'notes': instance.notes,
    };

_$PaymentModelImpl _$$PaymentModelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentModelImpl(
      id: json['id'] as String,
      weekId: json['weekId'] as String,
      passengerId: json['passengerId'] as String,
      passengerName: json['passengerName'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      status: json['status'] as String,
      paymentMethod: json['paymentMethod'] as String,
      confirmedBy: json['confirmedBy'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$PaymentModelImplToJson(_$PaymentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weekId': instance.weekId,
      'passengerId': instance.passengerId,
      'passengerName': instance.passengerName,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
      'paymentMethod': instance.paymentMethod,
      'confirmedBy': instance.confirmedBy,
      'notes': instance.notes,
    };
