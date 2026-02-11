// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeekModel _$WeekModelFromJson(Map<String, dynamic> json) {
  return _WeekModel.fromJson(json);
}

/// @nodoc
mixin _$WeekModel {
  String get id => throw _privateConstructorUsedError;
  int get weekNumber => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get driverSalary => throw _privateConstructorUsedError;
  double get totalGuestsIncome => throw _privateConstructorUsedError;
  double get totalFines => throw _privateConstructorUsedError;
  double get finesToFund => throw _privateConstructorUsedError;
  double get finesToCalculation => throw _privateConstructorUsedError;
  double get fundDeductions => throw _privateConstructorUsedError;
  double get perPassengerAmount => throw _privateConstructorUsedError;
  int get activePassengersCount => throw _privateConstructorUsedError;
  double get fundBalanceStart => throw _privateConstructorUsedError;
  double get fundBalanceEnd => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this WeekModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekModelCopyWith<WeekModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekModelCopyWith<$Res> {
  factory $WeekModelCopyWith(WeekModel value, $Res Function(WeekModel) then) =
      _$WeekModelCopyWithImpl<$Res, WeekModel>;
  @useResult
  $Res call(
      {String id,
      int weekNumber,
      int year,
      DateTime startDate,
      DateTime endDate,
      String status,
      double driverSalary,
      double totalGuestsIncome,
      double totalFines,
      double finesToFund,
      double finesToCalculation,
      double fundDeductions,
      double perPassengerAmount,
      int activePassengersCount,
      double fundBalanceStart,
      double fundBalanceEnd,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$WeekModelCopyWithImpl<$Res, $Val extends WeekModel>
    implements $WeekModelCopyWith<$Res> {
  _$WeekModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekNumber = null,
    Object? year = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? driverSalary = null,
    Object? totalGuestsIncome = null,
    Object? totalFines = null,
    Object? finesToFund = null,
    Object? finesToCalculation = null,
    Object? fundDeductions = null,
    Object? perPassengerAmount = null,
    Object? activePassengersCount = null,
    Object? fundBalanceStart = null,
    Object? fundBalanceEnd = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekNumber: null == weekNumber
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      driverSalary: null == driverSalary
          ? _value.driverSalary
          : driverSalary // ignore: cast_nullable_to_non_nullable
              as double,
      totalGuestsIncome: null == totalGuestsIncome
          ? _value.totalGuestsIncome
          : totalGuestsIncome // ignore: cast_nullable_to_non_nullable
              as double,
      totalFines: null == totalFines
          ? _value.totalFines
          : totalFines // ignore: cast_nullable_to_non_nullable
              as double,
      finesToFund: null == finesToFund
          ? _value.finesToFund
          : finesToFund // ignore: cast_nullable_to_non_nullable
              as double,
      finesToCalculation: null == finesToCalculation
          ? _value.finesToCalculation
          : finesToCalculation // ignore: cast_nullable_to_non_nullable
              as double,
      fundDeductions: null == fundDeductions
          ? _value.fundDeductions
          : fundDeductions // ignore: cast_nullable_to_non_nullable
              as double,
      perPassengerAmount: null == perPassengerAmount
          ? _value.perPassengerAmount
          : perPassengerAmount // ignore: cast_nullable_to_non_nullable
              as double,
      activePassengersCount: null == activePassengersCount
          ? _value.activePassengersCount
          : activePassengersCount // ignore: cast_nullable_to_non_nullable
              as int,
      fundBalanceStart: null == fundBalanceStart
          ? _value.fundBalanceStart
          : fundBalanceStart // ignore: cast_nullable_to_non_nullable
              as double,
      fundBalanceEnd: null == fundBalanceEnd
          ? _value.fundBalanceEnd
          : fundBalanceEnd // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekModelImplCopyWith<$Res>
    implements $WeekModelCopyWith<$Res> {
  factory _$$WeekModelImplCopyWith(
          _$WeekModelImpl value, $Res Function(_$WeekModelImpl) then) =
      __$$WeekModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int weekNumber,
      int year,
      DateTime startDate,
      DateTime endDate,
      String status,
      double driverSalary,
      double totalGuestsIncome,
      double totalFines,
      double finesToFund,
      double finesToCalculation,
      double fundDeductions,
      double perPassengerAmount,
      int activePassengersCount,
      double fundBalanceStart,
      double fundBalanceEnd,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$WeekModelImplCopyWithImpl<$Res>
    extends _$WeekModelCopyWithImpl<$Res, _$WeekModelImpl>
    implements _$$WeekModelImplCopyWith<$Res> {
  __$$WeekModelImplCopyWithImpl(
      _$WeekModelImpl _value, $Res Function(_$WeekModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekNumber = null,
    Object? year = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? driverSalary = null,
    Object? totalGuestsIncome = null,
    Object? totalFines = null,
    Object? finesToFund = null,
    Object? finesToCalculation = null,
    Object? fundDeductions = null,
    Object? perPassengerAmount = null,
    Object? activePassengersCount = null,
    Object? fundBalanceStart = null,
    Object? fundBalanceEnd = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$WeekModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekNumber: null == weekNumber
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      driverSalary: null == driverSalary
          ? _value.driverSalary
          : driverSalary // ignore: cast_nullable_to_non_nullable
              as double,
      totalGuestsIncome: null == totalGuestsIncome
          ? _value.totalGuestsIncome
          : totalGuestsIncome // ignore: cast_nullable_to_non_nullable
              as double,
      totalFines: null == totalFines
          ? _value.totalFines
          : totalFines // ignore: cast_nullable_to_non_nullable
              as double,
      finesToFund: null == finesToFund
          ? _value.finesToFund
          : finesToFund // ignore: cast_nullable_to_non_nullable
              as double,
      finesToCalculation: null == finesToCalculation
          ? _value.finesToCalculation
          : finesToCalculation // ignore: cast_nullable_to_non_nullable
              as double,
      fundDeductions: null == fundDeductions
          ? _value.fundDeductions
          : fundDeductions // ignore: cast_nullable_to_non_nullable
              as double,
      perPassengerAmount: null == perPassengerAmount
          ? _value.perPassengerAmount
          : perPassengerAmount // ignore: cast_nullable_to_non_nullable
              as double,
      activePassengersCount: null == activePassengersCount
          ? _value.activePassengersCount
          : activePassengersCount // ignore: cast_nullable_to_non_nullable
              as int,
      fundBalanceStart: null == fundBalanceStart
          ? _value.fundBalanceStart
          : fundBalanceStart // ignore: cast_nullable_to_non_nullable
              as double,
      fundBalanceEnd: null == fundBalanceEnd
          ? _value.fundBalanceEnd
          : fundBalanceEnd // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekModelImpl implements _WeekModel {
  const _$WeekModelImpl(
      {required this.id,
      required this.weekNumber,
      required this.year,
      required this.startDate,
      required this.endDate,
      required this.status,
      required this.driverSalary,
      required this.totalGuestsIncome,
      required this.totalFines,
      required this.finesToFund,
      required this.finesToCalculation,
      required this.fundDeductions,
      required this.perPassengerAmount,
      required this.activePassengersCount,
      required this.fundBalanceStart,
      required this.fundBalanceEnd,
      required this.createdAt,
      required this.updatedAt});

  factory _$WeekModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekModelImplFromJson(json);

  @override
  final String id;
  @override
  final int weekNumber;
  @override
  final int year;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String status;
  @override
  final double driverSalary;
  @override
  final double totalGuestsIncome;
  @override
  final double totalFines;
  @override
  final double finesToFund;
  @override
  final double finesToCalculation;
  @override
  final double fundDeductions;
  @override
  final double perPassengerAmount;
  @override
  final int activePassengersCount;
  @override
  final double fundBalanceStart;
  @override
  final double fundBalanceEnd;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'WeekModel(id: $id, weekNumber: $weekNumber, year: $year, startDate: $startDate, endDate: $endDate, status: $status, driverSalary: $driverSalary, totalGuestsIncome: $totalGuestsIncome, totalFines: $totalFines, finesToFund: $finesToFund, finesToCalculation: $finesToCalculation, fundDeductions: $fundDeductions, perPassengerAmount: $perPassengerAmount, activePassengersCount: $activePassengersCount, fundBalanceStart: $fundBalanceStart, fundBalanceEnd: $fundBalanceEnd, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.driverSalary, driverSalary) ||
                other.driverSalary == driverSalary) &&
            (identical(other.totalGuestsIncome, totalGuestsIncome) ||
                other.totalGuestsIncome == totalGuestsIncome) &&
            (identical(other.totalFines, totalFines) ||
                other.totalFines == totalFines) &&
            (identical(other.finesToFund, finesToFund) ||
                other.finesToFund == finesToFund) &&
            (identical(other.finesToCalculation, finesToCalculation) ||
                other.finesToCalculation == finesToCalculation) &&
            (identical(other.fundDeductions, fundDeductions) ||
                other.fundDeductions == fundDeductions) &&
            (identical(other.perPassengerAmount, perPassengerAmount) ||
                other.perPassengerAmount == perPassengerAmount) &&
            (identical(other.activePassengersCount, activePassengersCount) ||
                other.activePassengersCount == activePassengersCount) &&
            (identical(other.fundBalanceStart, fundBalanceStart) ||
                other.fundBalanceStart == fundBalanceStart) &&
            (identical(other.fundBalanceEnd, fundBalanceEnd) ||
                other.fundBalanceEnd == fundBalanceEnd) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      weekNumber,
      year,
      startDate,
      endDate,
      status,
      driverSalary,
      totalGuestsIncome,
      totalFines,
      finesToFund,
      finesToCalculation,
      fundDeductions,
      perPassengerAmount,
      activePassengersCount,
      fundBalanceStart,
      fundBalanceEnd,
      createdAt,
      updatedAt);

  /// Create a copy of WeekModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekModelImplCopyWith<_$WeekModelImpl> get copyWith =>
      __$$WeekModelImplCopyWithImpl<_$WeekModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekModelImplToJson(
      this,
    );
  }
}

abstract class _WeekModel implements WeekModel {
  const factory _WeekModel(
      {required final String id,
      required final int weekNumber,
      required final int year,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String status,
      required final double driverSalary,
      required final double totalGuestsIncome,
      required final double totalFines,
      required final double finesToFund,
      required final double finesToCalculation,
      required final double fundDeductions,
      required final double perPassengerAmount,
      required final int activePassengersCount,
      required final double fundBalanceStart,
      required final double fundBalanceEnd,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$WeekModelImpl;

  factory _WeekModel.fromJson(Map<String, dynamic> json) =
      _$WeekModelImpl.fromJson;

  @override
  String get id;
  @override
  int get weekNumber;
  @override
  int get year;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get status;
  @override
  double get driverSalary;
  @override
  double get totalGuestsIncome;
  @override
  double get totalFines;
  @override
  double get finesToFund;
  @override
  double get finesToCalculation;
  @override
  double get fundDeductions;
  @override
  double get perPassengerAmount;
  @override
  int get activePassengersCount;
  @override
  double get fundBalanceStart;
  @override
  double get fundBalanceEnd;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of WeekModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekModelImplCopyWith<_$WeekModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekDetailModel _$WeekDetailModelFromJson(Map<String, dynamic> json) {
  return _WeekDetailModel.fromJson(json);
}

/// @nodoc
mixin _$WeekDetailModel {
  WeekModel get week => throw _privateConstructorUsedError;
  List<GuestVisitModel> get guests => throw _privateConstructorUsedError;
  List<FineModel> get fines => throw _privateConstructorUsedError;
  List<PaymentModel> get payments => throw _privateConstructorUsedError;

  /// Serializes this WeekDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekDetailModelCopyWith<WeekDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekDetailModelCopyWith<$Res> {
  factory $WeekDetailModelCopyWith(
          WeekDetailModel value, $Res Function(WeekDetailModel) then) =
      _$WeekDetailModelCopyWithImpl<$Res, WeekDetailModel>;
  @useResult
  $Res call(
      {WeekModel week,
      List<GuestVisitModel> guests,
      List<FineModel> fines,
      List<PaymentModel> payments});

  $WeekModelCopyWith<$Res> get week;
}

/// @nodoc
class _$WeekDetailModelCopyWithImpl<$Res, $Val extends WeekDetailModel>
    implements $WeekDetailModelCopyWith<$Res> {
  _$WeekDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
    Object? guests = null,
    Object? fines = null,
    Object? payments = null,
  }) {
    return _then(_value.copyWith(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as WeekModel,
      guests: null == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<GuestVisitModel>,
      fines: null == fines
          ? _value.fines
          : fines // ignore: cast_nullable_to_non_nullable
              as List<FineModel>,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentModel>,
    ) as $Val);
  }

  /// Create a copy of WeekDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekModelCopyWith<$Res> get week {
    return $WeekModelCopyWith<$Res>(_value.week, (value) {
      return _then(_value.copyWith(week: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeekDetailModelImplCopyWith<$Res>
    implements $WeekDetailModelCopyWith<$Res> {
  factory _$$WeekDetailModelImplCopyWith(_$WeekDetailModelImpl value,
          $Res Function(_$WeekDetailModelImpl) then) =
      __$$WeekDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeekModel week,
      List<GuestVisitModel> guests,
      List<FineModel> fines,
      List<PaymentModel> payments});

  @override
  $WeekModelCopyWith<$Res> get week;
}

/// @nodoc
class __$$WeekDetailModelImplCopyWithImpl<$Res>
    extends _$WeekDetailModelCopyWithImpl<$Res, _$WeekDetailModelImpl>
    implements _$$WeekDetailModelImplCopyWith<$Res> {
  __$$WeekDetailModelImplCopyWithImpl(
      _$WeekDetailModelImpl _value, $Res Function(_$WeekDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
    Object? guests = null,
    Object? fines = null,
    Object? payments = null,
  }) {
    return _then(_$WeekDetailModelImpl(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as WeekModel,
      guests: null == guests
          ? _value._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<GuestVisitModel>,
      fines: null == fines
          ? _value._fines
          : fines // ignore: cast_nullable_to_non_nullable
              as List<FineModel>,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekDetailModelImpl implements _WeekDetailModel {
  const _$WeekDetailModelImpl(
      {required this.week,
      required final List<GuestVisitModel> guests,
      required final List<FineModel> fines,
      required final List<PaymentModel> payments})
      : _guests = guests,
        _fines = fines,
        _payments = payments;

  factory _$WeekDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekDetailModelImplFromJson(json);

  @override
  final WeekModel week;
  final List<GuestVisitModel> _guests;
  @override
  List<GuestVisitModel> get guests {
    if (_guests is EqualUnmodifiableListView) return _guests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guests);
  }

  final List<FineModel> _fines;
  @override
  List<FineModel> get fines {
    if (_fines is EqualUnmodifiableListView) return _fines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fines);
  }

  final List<PaymentModel> _payments;
  @override
  List<PaymentModel> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  String toString() {
    return 'WeekDetailModel(week: $week, guests: $guests, fines: $fines, payments: $payments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekDetailModelImpl &&
            (identical(other.week, week) || other.week == week) &&
            const DeepCollectionEquality().equals(other._guests, _guests) &&
            const DeepCollectionEquality().equals(other._fines, _fines) &&
            const DeepCollectionEquality().equals(other._payments, _payments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      week,
      const DeepCollectionEquality().hash(_guests),
      const DeepCollectionEquality().hash(_fines),
      const DeepCollectionEquality().hash(_payments));

  /// Create a copy of WeekDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekDetailModelImplCopyWith<_$WeekDetailModelImpl> get copyWith =>
      __$$WeekDetailModelImplCopyWithImpl<_$WeekDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekDetailModelImplToJson(
      this,
    );
  }
}

abstract class _WeekDetailModel implements WeekDetailModel {
  const factory _WeekDetailModel(
      {required final WeekModel week,
      required final List<GuestVisitModel> guests,
      required final List<FineModel> fines,
      required final List<PaymentModel> payments}) = _$WeekDetailModelImpl;

  factory _WeekDetailModel.fromJson(Map<String, dynamic> json) =
      _$WeekDetailModelImpl.fromJson;

  @override
  WeekModel get week;
  @override
  List<GuestVisitModel> get guests;
  @override
  List<FineModel> get fines;
  @override
  List<PaymentModel> get payments;

  /// Create a copy of WeekDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekDetailModelImplCopyWith<_$WeekDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuestVisitModel _$GuestVisitModelFromJson(Map<String, dynamic> json) {
  return _GuestVisitModel.fromJson(json);
}

/// @nodoc
mixin _$GuestVisitModel {
  String get id => throw _privateConstructorUsedError;
  String get weekId => throw _privateConstructorUsedError;
  String get guestName => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get dayOfWeek => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String? get invitedById => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this GuestVisitModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuestVisitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuestVisitModelCopyWith<GuestVisitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestVisitModelCopyWith<$Res> {
  factory $GuestVisitModelCopyWith(
          GuestVisitModel value, $Res Function(GuestVisitModel) then) =
      _$GuestVisitModelCopyWithImpl<$Res, GuestVisitModel>;
  @useResult
  $Res call(
      {String id,
      String weekId,
      String guestName,
      DateTime date,
      String dayOfWeek,
      double amount,
      String? invitedById,
      String? notes});
}

/// @nodoc
class _$GuestVisitModelCopyWithImpl<$Res, $Val extends GuestVisitModel>
    implements $GuestVisitModelCopyWith<$Res> {
  _$GuestVisitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuestVisitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekId = null,
    Object? guestName = null,
    Object? date = null,
    Object? dayOfWeek = null,
    Object? amount = null,
    Object? invitedById = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekId: null == weekId
          ? _value.weekId
          : weekId // ignore: cast_nullable_to_non_nullable
              as String,
      guestName: null == guestName
          ? _value.guestName
          : guestName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      invitedById: freezed == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuestVisitModelImplCopyWith<$Res>
    implements $GuestVisitModelCopyWith<$Res> {
  factory _$$GuestVisitModelImplCopyWith(_$GuestVisitModelImpl value,
          $Res Function(_$GuestVisitModelImpl) then) =
      __$$GuestVisitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String weekId,
      String guestName,
      DateTime date,
      String dayOfWeek,
      double amount,
      String? invitedById,
      String? notes});
}

/// @nodoc
class __$$GuestVisitModelImplCopyWithImpl<$Res>
    extends _$GuestVisitModelCopyWithImpl<$Res, _$GuestVisitModelImpl>
    implements _$$GuestVisitModelImplCopyWith<$Res> {
  __$$GuestVisitModelImplCopyWithImpl(
      _$GuestVisitModelImpl _value, $Res Function(_$GuestVisitModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestVisitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekId = null,
    Object? guestName = null,
    Object? date = null,
    Object? dayOfWeek = null,
    Object? amount = null,
    Object? invitedById = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$GuestVisitModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekId: null == weekId
          ? _value.weekId
          : weekId // ignore: cast_nullable_to_non_nullable
              as String,
      guestName: null == guestName
          ? _value.guestName
          : guestName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      invitedById: freezed == invitedById
          ? _value.invitedById
          : invitedById // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuestVisitModelImpl implements _GuestVisitModel {
  const _$GuestVisitModelImpl(
      {required this.id,
      required this.weekId,
      required this.guestName,
      required this.date,
      required this.dayOfWeek,
      required this.amount,
      this.invitedById,
      this.notes});

  factory _$GuestVisitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuestVisitModelImplFromJson(json);

  @override
  final String id;
  @override
  final String weekId;
  @override
  final String guestName;
  @override
  final DateTime date;
  @override
  final String dayOfWeek;
  @override
  final double amount;
  @override
  final String? invitedById;
  @override
  final String? notes;

  @override
  String toString() {
    return 'GuestVisitModel(id: $id, weekId: $weekId, guestName: $guestName, date: $date, dayOfWeek: $dayOfWeek, amount: $amount, invitedById: $invitedById, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestVisitModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weekId, weekId) || other.weekId == weekId) &&
            (identical(other.guestName, guestName) ||
                other.guestName == guestName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.invitedById, invitedById) ||
                other.invitedById == invitedById) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, weekId, guestName, date,
      dayOfWeek, amount, invitedById, notes);

  /// Create a copy of GuestVisitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestVisitModelImplCopyWith<_$GuestVisitModelImpl> get copyWith =>
      __$$GuestVisitModelImplCopyWithImpl<_$GuestVisitModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuestVisitModelImplToJson(
      this,
    );
  }
}

abstract class _GuestVisitModel implements GuestVisitModel {
  const factory _GuestVisitModel(
      {required final String id,
      required final String weekId,
      required final String guestName,
      required final DateTime date,
      required final String dayOfWeek,
      required final double amount,
      final String? invitedById,
      final String? notes}) = _$GuestVisitModelImpl;

  factory _GuestVisitModel.fromJson(Map<String, dynamic> json) =
      _$GuestVisitModelImpl.fromJson;

  @override
  String get id;
  @override
  String get weekId;
  @override
  String get guestName;
  @override
  DateTime get date;
  @override
  String get dayOfWeek;
  @override
  double get amount;
  @override
  String? get invitedById;
  @override
  String? get notes;

  /// Create a copy of GuestVisitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuestVisitModelImplCopyWith<_$GuestVisitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FineModel _$FineModelFromJson(Map<String, dynamic> json) {
  return _FineModel.fromJson(json);
}

/// @nodoc
mixin _$FineModel {
  String get id => throw _privateConstructorUsedError;
  String get weekId => throw _privateConstructorUsedError;
  String get passengerId => throw _privateConstructorUsedError;
  String get passengerName => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get dayOfWeek => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  double get amountToFund => throw _privateConstructorUsedError;
  double get amountToCalc => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this FineModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FineModelCopyWith<FineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FineModelCopyWith<$Res> {
  factory $FineModelCopyWith(FineModel value, $Res Function(FineModel) then) =
      _$FineModelCopyWithImpl<$Res, FineModel>;
  @useResult
  $Res call(
      {String id,
      String weekId,
      String passengerId,
      String passengerName,
      DateTime date,
      String dayOfWeek,
      double amount,
      String reason,
      String destination,
      double amountToFund,
      double amountToCalc,
      String? notes});
}

/// @nodoc
class _$FineModelCopyWithImpl<$Res, $Val extends FineModel>
    implements $FineModelCopyWith<$Res> {
  _$FineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekId = null,
    Object? passengerId = null,
    Object? passengerName = null,
    Object? date = null,
    Object? dayOfWeek = null,
    Object? amount = null,
    Object? reason = null,
    Object? destination = null,
    Object? amountToFund = null,
    Object? amountToCalc = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekId: null == weekId
          ? _value.weekId
          : weekId // ignore: cast_nullable_to_non_nullable
              as String,
      passengerId: null == passengerId
          ? _value.passengerId
          : passengerId // ignore: cast_nullable_to_non_nullable
              as String,
      passengerName: null == passengerName
          ? _value.passengerName
          : passengerName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amountToFund: null == amountToFund
          ? _value.amountToFund
          : amountToFund // ignore: cast_nullable_to_non_nullable
              as double,
      amountToCalc: null == amountToCalc
          ? _value.amountToCalc
          : amountToCalc // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FineModelImplCopyWith<$Res>
    implements $FineModelCopyWith<$Res> {
  factory _$$FineModelImplCopyWith(
          _$FineModelImpl value, $Res Function(_$FineModelImpl) then) =
      __$$FineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String weekId,
      String passengerId,
      String passengerName,
      DateTime date,
      String dayOfWeek,
      double amount,
      String reason,
      String destination,
      double amountToFund,
      double amountToCalc,
      String? notes});
}

/// @nodoc
class __$$FineModelImplCopyWithImpl<$Res>
    extends _$FineModelCopyWithImpl<$Res, _$FineModelImpl>
    implements _$$FineModelImplCopyWith<$Res> {
  __$$FineModelImplCopyWithImpl(
      _$FineModelImpl _value, $Res Function(_$FineModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekId = null,
    Object? passengerId = null,
    Object? passengerName = null,
    Object? date = null,
    Object? dayOfWeek = null,
    Object? amount = null,
    Object? reason = null,
    Object? destination = null,
    Object? amountToFund = null,
    Object? amountToCalc = null,
    Object? notes = freezed,
  }) {
    return _then(_$FineModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekId: null == weekId
          ? _value.weekId
          : weekId // ignore: cast_nullable_to_non_nullable
              as String,
      passengerId: null == passengerId
          ? _value.passengerId
          : passengerId // ignore: cast_nullable_to_non_nullable
              as String,
      passengerName: null == passengerName
          ? _value.passengerName
          : passengerName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amountToFund: null == amountToFund
          ? _value.amountToFund
          : amountToFund // ignore: cast_nullable_to_non_nullable
              as double,
      amountToCalc: null == amountToCalc
          ? _value.amountToCalc
          : amountToCalc // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FineModelImpl implements _FineModel {
  const _$FineModelImpl(
      {required this.id,
      required this.weekId,
      required this.passengerId,
      required this.passengerName,
      required this.date,
      required this.dayOfWeek,
      required this.amount,
      required this.reason,
      required this.destination,
      required this.amountToFund,
      required this.amountToCalc,
      this.notes});

  factory _$FineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FineModelImplFromJson(json);

  @override
  final String id;
  @override
  final String weekId;
  @override
  final String passengerId;
  @override
  final String passengerName;
  @override
  final DateTime date;
  @override
  final String dayOfWeek;
  @override
  final double amount;
  @override
  final String reason;
  @override
  final String destination;
  @override
  final double amountToFund;
  @override
  final double amountToCalc;
  @override
  final String? notes;

  @override
  String toString() {
    return 'FineModel(id: $id, weekId: $weekId, passengerId: $passengerId, passengerName: $passengerName, date: $date, dayOfWeek: $dayOfWeek, amount: $amount, reason: $reason, destination: $destination, amountToFund: $amountToFund, amountToCalc: $amountToCalc, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FineModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weekId, weekId) || other.weekId == weekId) &&
            (identical(other.passengerId, passengerId) ||
                other.passengerId == passengerId) &&
            (identical(other.passengerName, passengerName) ||
                other.passengerName == passengerName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amountToFund, amountToFund) ||
                other.amountToFund == amountToFund) &&
            (identical(other.amountToCalc, amountToCalc) ||
                other.amountToCalc == amountToCalc) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      weekId,
      passengerId,
      passengerName,
      date,
      dayOfWeek,
      amount,
      reason,
      destination,
      amountToFund,
      amountToCalc,
      notes);

  /// Create a copy of FineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FineModelImplCopyWith<_$FineModelImpl> get copyWith =>
      __$$FineModelImplCopyWithImpl<_$FineModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FineModelImplToJson(
      this,
    );
  }
}

abstract class _FineModel implements FineModel {
  const factory _FineModel(
      {required final String id,
      required final String weekId,
      required final String passengerId,
      required final String passengerName,
      required final DateTime date,
      required final String dayOfWeek,
      required final double amount,
      required final String reason,
      required final String destination,
      required final double amountToFund,
      required final double amountToCalc,
      final String? notes}) = _$FineModelImpl;

  factory _FineModel.fromJson(Map<String, dynamic> json) =
      _$FineModelImpl.fromJson;

  @override
  String get id;
  @override
  String get weekId;
  @override
  String get passengerId;
  @override
  String get passengerName;
  @override
  DateTime get date;
  @override
  String get dayOfWeek;
  @override
  double get amount;
  @override
  String get reason;
  @override
  String get destination;
  @override
  double get amountToFund;
  @override
  double get amountToCalc;
  @override
  String? get notes;

  /// Create a copy of FineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FineModelImplCopyWith<_$FineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentModel {
  String get id => throw _privateConstructorUsedError;
  String get weekId => throw _privateConstructorUsedError;
  String get passengerId => throw _privateConstructorUsedError;
  String get passengerName => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String? get confirmedBy => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this PaymentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res, PaymentModel>;
  @useResult
  $Res call(
      {String id,
      String weekId,
      String passengerId,
      String passengerName,
      double amount,
      DateTime date,
      String status,
      String paymentMethod,
      String? confirmedBy,
      String? notes});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res, $Val extends PaymentModel>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekId = null,
    Object? passengerId = null,
    Object? passengerName = null,
    Object? amount = null,
    Object? date = null,
    Object? status = null,
    Object? paymentMethod = null,
    Object? confirmedBy = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekId: null == weekId
          ? _value.weekId
          : weekId // ignore: cast_nullable_to_non_nullable
              as String,
      passengerId: null == passengerId
          ? _value.passengerId
          : passengerId // ignore: cast_nullable_to_non_nullable
              as String,
      passengerName: null == passengerName
          ? _value.passengerName
          : passengerName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedBy: freezed == confirmedBy
          ? _value.confirmedBy
          : confirmedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentModelImplCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$$PaymentModelImplCopyWith(
          _$PaymentModelImpl value, $Res Function(_$PaymentModelImpl) then) =
      __$$PaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String weekId,
      String passengerId,
      String passengerName,
      double amount,
      DateTime date,
      String status,
      String paymentMethod,
      String? confirmedBy,
      String? notes});
}

/// @nodoc
class __$$PaymentModelImplCopyWithImpl<$Res>
    extends _$PaymentModelCopyWithImpl<$Res, _$PaymentModelImpl>
    implements _$$PaymentModelImplCopyWith<$Res> {
  __$$PaymentModelImplCopyWithImpl(
      _$PaymentModelImpl _value, $Res Function(_$PaymentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekId = null,
    Object? passengerId = null,
    Object? passengerName = null,
    Object? amount = null,
    Object? date = null,
    Object? status = null,
    Object? paymentMethod = null,
    Object? confirmedBy = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$PaymentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekId: null == weekId
          ? _value.weekId
          : weekId // ignore: cast_nullable_to_non_nullable
              as String,
      passengerId: null == passengerId
          ? _value.passengerId
          : passengerId // ignore: cast_nullable_to_non_nullable
              as String,
      passengerName: null == passengerName
          ? _value.passengerName
          : passengerName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedBy: freezed == confirmedBy
          ? _value.confirmedBy
          : confirmedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentModelImpl implements _PaymentModel {
  const _$PaymentModelImpl(
      {required this.id,
      required this.weekId,
      required this.passengerId,
      required this.passengerName,
      required this.amount,
      required this.date,
      required this.status,
      required this.paymentMethod,
      this.confirmedBy,
      this.notes});

  factory _$PaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentModelImplFromJson(json);

  @override
  final String id;
  @override
  final String weekId;
  @override
  final String passengerId;
  @override
  final String passengerName;
  @override
  final double amount;
  @override
  final DateTime date;
  @override
  final String status;
  @override
  final String paymentMethod;
  @override
  final String? confirmedBy;
  @override
  final String? notes;

  @override
  String toString() {
    return 'PaymentModel(id: $id, weekId: $weekId, passengerId: $passengerId, passengerName: $passengerName, amount: $amount, date: $date, status: $status, paymentMethod: $paymentMethod, confirmedBy: $confirmedBy, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weekId, weekId) || other.weekId == weekId) &&
            (identical(other.passengerId, passengerId) ||
                other.passengerId == passengerId) &&
            (identical(other.passengerName, passengerName) ||
                other.passengerName == passengerName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.confirmedBy, confirmedBy) ||
                other.confirmedBy == confirmedBy) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, weekId, passengerId,
      passengerName, amount, date, status, paymentMethod, confirmedBy, notes);

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      __$$PaymentModelImplCopyWithImpl<_$PaymentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentModel implements PaymentModel {
  const factory _PaymentModel(
      {required final String id,
      required final String weekId,
      required final String passengerId,
      required final String passengerName,
      required final double amount,
      required final DateTime date,
      required final String status,
      required final String paymentMethod,
      final String? confirmedBy,
      final String? notes}) = _$PaymentModelImpl;

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$PaymentModelImpl.fromJson;

  @override
  String get id;
  @override
  String get weekId;
  @override
  String get passengerId;
  @override
  String get passengerName;
  @override
  double get amount;
  @override
  DateTime get date;
  @override
  String get status;
  @override
  String get paymentMethod;
  @override
  String? get confirmedBy;
  @override
  String? get notes;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
