// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fund_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FundModel _$FundModelFromJson(Map<String, dynamic> json) {
  return _FundModel.fromJson(json);
}

/// @nodoc
mixin _$FundModel {
  String get id => throw _privateConstructorUsedError;
  double get currentBalance => throw _privateConstructorUsedError;
  double get minLimit => throw _privateConstructorUsedError;
  double get maxLimit => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FundModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FundModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FundModelCopyWith<FundModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundModelCopyWith<$Res> {
  factory $FundModelCopyWith(FundModel value, $Res Function(FundModel) then) =
      _$FundModelCopyWithImpl<$Res, FundModel>;
  @useResult
  $Res call(
      {String id,
      double currentBalance,
      double minLimit,
      double maxLimit,
      String status,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$FundModelCopyWithImpl<$Res, $Val extends FundModel>
    implements $FundModelCopyWith<$Res> {
  _$FundModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FundModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentBalance = null,
    Object? minLimit = null,
    Object? maxLimit = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentBalance: null == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      minLimit: null == minLimit
          ? _value.minLimit
          : minLimit // ignore: cast_nullable_to_non_nullable
              as double,
      maxLimit: null == maxLimit
          ? _value.maxLimit
          : maxLimit // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$FundModelImplCopyWith<$Res>
    implements $FundModelCopyWith<$Res> {
  factory _$$FundModelImplCopyWith(
          _$FundModelImpl value, $Res Function(_$FundModelImpl) then) =
      __$$FundModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double currentBalance,
      double minLimit,
      double maxLimit,
      String status,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$FundModelImplCopyWithImpl<$Res>
    extends _$FundModelCopyWithImpl<$Res, _$FundModelImpl>
    implements _$$FundModelImplCopyWith<$Res> {
  __$$FundModelImplCopyWithImpl(
      _$FundModelImpl _value, $Res Function(_$FundModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentBalance = null,
    Object? minLimit = null,
    Object? maxLimit = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$FundModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentBalance: null == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      minLimit: null == minLimit
          ? _value.minLimit
          : minLimit // ignore: cast_nullable_to_non_nullable
              as double,
      maxLimit: null == maxLimit
          ? _value.maxLimit
          : maxLimit // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$FundModelImpl implements _FundModel {
  const _$FundModelImpl(
      {required this.id,
      required this.currentBalance,
      required this.minLimit,
      required this.maxLimit,
      required this.status,
      required this.createdAt,
      required this.updatedAt});

  factory _$FundModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FundModelImplFromJson(json);

  @override
  final String id;
  @override
  final double currentBalance;
  @override
  final double minLimit;
  @override
  final double maxLimit;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'FundModel(id: $id, currentBalance: $currentBalance, minLimit: $minLimit, maxLimit: $maxLimit, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentBalance, currentBalance) ||
                other.currentBalance == currentBalance) &&
            (identical(other.minLimit, minLimit) ||
                other.minLimit == minLimit) &&
            (identical(other.maxLimit, maxLimit) ||
                other.maxLimit == maxLimit) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, currentBalance, minLimit,
      maxLimit, status, createdAt, updatedAt);

  /// Create a copy of FundModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundModelImplCopyWith<_$FundModelImpl> get copyWith =>
      __$$FundModelImplCopyWithImpl<_$FundModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FundModelImplToJson(
      this,
    );
  }
}

abstract class _FundModel implements FundModel {
  const factory _FundModel(
      {required final String id,
      required final double currentBalance,
      required final double minLimit,
      required final double maxLimit,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$FundModelImpl;

  factory _FundModel.fromJson(Map<String, dynamic> json) =
      _$FundModelImpl.fromJson;

  @override
  String get id;
  @override
  double get currentBalance;
  @override
  double get minLimit;
  @override
  double get maxLimit;
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of FundModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundModelImplCopyWith<_$FundModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FundTransactionModel _$FundTransactionModelFromJson(Map<String, dynamic> json) {
  return _FundTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$FundTransactionModel {
  String get id => throw _privateConstructorUsedError;
  String get fundId => throw _privateConstructorUsedError;
  String? get weekId => throw _privateConstructorUsedError;
  String? get fineId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  double get balanceBefore => throw _privateConstructorUsedError;
  double get balanceAfter => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this FundTransactionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FundTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FundTransactionModelCopyWith<FundTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundTransactionModelCopyWith<$Res> {
  factory $FundTransactionModelCopyWith(FundTransactionModel value,
          $Res Function(FundTransactionModel) then) =
      _$FundTransactionModelCopyWithImpl<$Res, FundTransactionModel>;
  @useResult
  $Res call(
      {String id,
      String fundId,
      String? weekId,
      String? fineId,
      String type,
      double amount,
      String reason,
      double balanceBefore,
      double balanceAfter,
      String createdBy,
      DateTime createdAt});
}

/// @nodoc
class _$FundTransactionModelCopyWithImpl<$Res,
        $Val extends FundTransactionModel>
    implements $FundTransactionModelCopyWith<$Res> {
  _$FundTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FundTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fundId = null,
    Object? weekId = freezed,
    Object? fineId = freezed,
    Object? type = null,
    Object? amount = null,
    Object? reason = null,
    Object? balanceBefore = null,
    Object? balanceAfter = null,
    Object? createdBy = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fundId: null == fundId
          ? _value.fundId
          : fundId // ignore: cast_nullable_to_non_nullable
              as String,
      weekId: freezed == weekId
          ? _value.weekId
          : weekId // ignore: cast_nullable_to_non_nullable
              as String?,
      fineId: freezed == fineId
          ? _value.fineId
          : fineId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      balanceBefore: null == balanceBefore
          ? _value.balanceBefore
          : balanceBefore // ignore: cast_nullable_to_non_nullable
              as double,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FundTransactionModelImplCopyWith<$Res>
    implements $FundTransactionModelCopyWith<$Res> {
  factory _$$FundTransactionModelImplCopyWith(_$FundTransactionModelImpl value,
          $Res Function(_$FundTransactionModelImpl) then) =
      __$$FundTransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fundId,
      String? weekId,
      String? fineId,
      String type,
      double amount,
      String reason,
      double balanceBefore,
      double balanceAfter,
      String createdBy,
      DateTime createdAt});
}

/// @nodoc
class __$$FundTransactionModelImplCopyWithImpl<$Res>
    extends _$FundTransactionModelCopyWithImpl<$Res, _$FundTransactionModelImpl>
    implements _$$FundTransactionModelImplCopyWith<$Res> {
  __$$FundTransactionModelImplCopyWithImpl(_$FundTransactionModelImpl _value,
      $Res Function(_$FundTransactionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fundId = null,
    Object? weekId = freezed,
    Object? fineId = freezed,
    Object? type = null,
    Object? amount = null,
    Object? reason = null,
    Object? balanceBefore = null,
    Object? balanceAfter = null,
    Object? createdBy = null,
    Object? createdAt = null,
  }) {
    return _then(_$FundTransactionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fundId: null == fundId
          ? _value.fundId
          : fundId // ignore: cast_nullable_to_non_nullable
              as String,
      weekId: freezed == weekId
          ? _value.weekId
          : weekId // ignore: cast_nullable_to_non_nullable
              as String?,
      fineId: freezed == fineId
          ? _value.fineId
          : fineId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      balanceBefore: null == balanceBefore
          ? _value.balanceBefore
          : balanceBefore // ignore: cast_nullable_to_non_nullable
              as double,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FundTransactionModelImpl implements _FundTransactionModel {
  const _$FundTransactionModelImpl(
      {required this.id,
      required this.fundId,
      this.weekId,
      this.fineId,
      required this.type,
      required this.amount,
      required this.reason,
      required this.balanceBefore,
      required this.balanceAfter,
      required this.createdBy,
      required this.createdAt});

  factory _$FundTransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FundTransactionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String fundId;
  @override
  final String? weekId;
  @override
  final String? fineId;
  @override
  final String type;
  @override
  final double amount;
  @override
  final String reason;
  @override
  final double balanceBefore;
  @override
  final double balanceAfter;
  @override
  final String createdBy;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'FundTransactionModel(id: $id, fundId: $fundId, weekId: $weekId, fineId: $fineId, type: $type, amount: $amount, reason: $reason, balanceBefore: $balanceBefore, balanceAfter: $balanceAfter, createdBy: $createdBy, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundTransactionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fundId, fundId) || other.fundId == fundId) &&
            (identical(other.weekId, weekId) || other.weekId == weekId) &&
            (identical(other.fineId, fineId) || other.fineId == fineId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.balanceBefore, balanceBefore) ||
                other.balanceBefore == balanceBefore) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fundId, weekId, fineId, type,
      amount, reason, balanceBefore, balanceAfter, createdBy, createdAt);

  /// Create a copy of FundTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundTransactionModelImplCopyWith<_$FundTransactionModelImpl>
      get copyWith =>
          __$$FundTransactionModelImplCopyWithImpl<_$FundTransactionModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FundTransactionModelImplToJson(
      this,
    );
  }
}

abstract class _FundTransactionModel implements FundTransactionModel {
  const factory _FundTransactionModel(
      {required final String id,
      required final String fundId,
      final String? weekId,
      final String? fineId,
      required final String type,
      required final double amount,
      required final String reason,
      required final double balanceBefore,
      required final double balanceAfter,
      required final String createdBy,
      required final DateTime createdAt}) = _$FundTransactionModelImpl;

  factory _FundTransactionModel.fromJson(Map<String, dynamic> json) =
      _$FundTransactionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get fundId;
  @override
  String? get weekId;
  @override
  String? get fineId;
  @override
  String get type;
  @override
  double get amount;
  @override
  String get reason;
  @override
  double get balanceBefore;
  @override
  double get balanceAfter;
  @override
  String get createdBy;
  @override
  DateTime get createdAt;

  /// Create a copy of FundTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundTransactionModelImplCopyWith<_$FundTransactionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
