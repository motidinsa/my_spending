// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_transaction_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTransactionStateModel {
  TransactionModel get transactionModel => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  bool? get isAmountAddButtonPressed => throw _privateConstructorUsedError;
  String get transactionType => throw _privateConstructorUsedError;
  double? get modalHeight => throw _privateConstructorUsedError;
  String? get redirectFrom => throw _privateConstructorUsedError;
  String? get selectedId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTransactionStateModelCopyWith<AddTransactionStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionStateModelCopyWith<$Res> {
  factory $AddTransactionStateModelCopyWith(AddTransactionStateModel value,
          $Res Function(AddTransactionStateModel) then) =
      _$AddTransactionStateModelCopyWithImpl<$Res, AddTransactionStateModel>;
  @useResult
  $Res call(
      {TransactionModel transactionModel,
      String amount,
      bool? isAmountAddButtonPressed,
      String transactionType,
      double? modalHeight,
      String? redirectFrom,
      String? selectedId});

  $TransactionModelCopyWith<$Res> get transactionModel;
}

/// @nodoc
class _$AddTransactionStateModelCopyWithImpl<$Res,
        $Val extends AddTransactionStateModel>
    implements $AddTransactionStateModelCopyWith<$Res> {
  _$AddTransactionStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionModel = null,
    Object? amount = null,
    Object? isAmountAddButtonPressed = freezed,
    Object? transactionType = null,
    Object? modalHeight = freezed,
    Object? redirectFrom = freezed,
    Object? selectedId = freezed,
  }) {
    return _then(_value.copyWith(
      transactionModel: null == transactionModel
          ? _value.transactionModel
          : transactionModel // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      isAmountAddButtonPressed: freezed == isAmountAddButtonPressed
          ? _value.isAmountAddButtonPressed
          : isAmountAddButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool?,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      modalHeight: freezed == modalHeight
          ? _value.modalHeight
          : modalHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      redirectFrom: freezed == redirectFrom
          ? _value.redirectFrom
          : redirectFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedId: freezed == selectedId
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionModelCopyWith<$Res> get transactionModel {
    return $TransactionModelCopyWith<$Res>(_value.transactionModel, (value) {
      return _then(_value.copyWith(transactionModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddTransactionStateModelImplCopyWith<$Res>
    implements $AddTransactionStateModelCopyWith<$Res> {
  factory _$$AddTransactionStateModelImplCopyWith(
          _$AddTransactionStateModelImpl value,
          $Res Function(_$AddTransactionStateModelImpl) then) =
      __$$AddTransactionStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionModel transactionModel,
      String amount,
      bool? isAmountAddButtonPressed,
      String transactionType,
      double? modalHeight,
      String? redirectFrom,
      String? selectedId});

  @override
  $TransactionModelCopyWith<$Res> get transactionModel;
}

/// @nodoc
class __$$AddTransactionStateModelImplCopyWithImpl<$Res>
    extends _$AddTransactionStateModelCopyWithImpl<$Res,
        _$AddTransactionStateModelImpl>
    implements _$$AddTransactionStateModelImplCopyWith<$Res> {
  __$$AddTransactionStateModelImplCopyWithImpl(
      _$AddTransactionStateModelImpl _value,
      $Res Function(_$AddTransactionStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionModel = null,
    Object? amount = null,
    Object? isAmountAddButtonPressed = freezed,
    Object? transactionType = null,
    Object? modalHeight = freezed,
    Object? redirectFrom = freezed,
    Object? selectedId = freezed,
  }) {
    return _then(_$AddTransactionStateModelImpl(
      transactionModel: null == transactionModel
          ? _value.transactionModel
          : transactionModel // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      isAmountAddButtonPressed: freezed == isAmountAddButtonPressed
          ? _value.isAmountAddButtonPressed
          : isAmountAddButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool?,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      modalHeight: freezed == modalHeight
          ? _value.modalHeight
          : modalHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      redirectFrom: freezed == redirectFrom
          ? _value.redirectFrom
          : redirectFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedId: freezed == selectedId
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddTransactionStateModelImpl implements _AddTransactionStateModel {
  const _$AddTransactionStateModelImpl(
      {required this.transactionModel,
      required this.amount,
      this.isAmountAddButtonPressed,
      required this.transactionType,
      this.modalHeight,
      this.redirectFrom,
      this.selectedId});

  @override
  final TransactionModel transactionModel;
  @override
  final String amount;
  @override
  final bool? isAmountAddButtonPressed;
  @override
  final String transactionType;
  @override
  final double? modalHeight;
  @override
  final String? redirectFrom;
  @override
  final String? selectedId;

  @override
  String toString() {
    return 'AddTransactionStateModel(transactionModel: $transactionModel, amount: $amount, isAmountAddButtonPressed: $isAmountAddButtonPressed, transactionType: $transactionType, modalHeight: $modalHeight, redirectFrom: $redirectFrom, selectedId: $selectedId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionStateModelImpl &&
            (identical(other.transactionModel, transactionModel) ||
                other.transactionModel == transactionModel) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(
                    other.isAmountAddButtonPressed, isAmountAddButtonPressed) ||
                other.isAmountAddButtonPressed == isAmountAddButtonPressed) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.modalHeight, modalHeight) ||
                other.modalHeight == modalHeight) &&
            (identical(other.redirectFrom, redirectFrom) ||
                other.redirectFrom == redirectFrom) &&
            (identical(other.selectedId, selectedId) ||
                other.selectedId == selectedId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      transactionModel,
      amount,
      isAmountAddButtonPressed,
      transactionType,
      modalHeight,
      redirectFrom,
      selectedId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionStateModelImplCopyWith<_$AddTransactionStateModelImpl>
      get copyWith => __$$AddTransactionStateModelImplCopyWithImpl<
          _$AddTransactionStateModelImpl>(this, _$identity);
}

abstract class _AddTransactionStateModel implements AddTransactionStateModel {
  const factory _AddTransactionStateModel(
      {required final TransactionModel transactionModel,
      required final String amount,
      final bool? isAmountAddButtonPressed,
      required final String transactionType,
      final double? modalHeight,
      final String? redirectFrom,
      final String? selectedId}) = _$AddTransactionStateModelImpl;

  @override
  TransactionModel get transactionModel;
  @override
  String get amount;
  @override
  bool? get isAmountAddButtonPressed;
  @override
  String get transactionType;
  @override
  double? get modalHeight;
  @override
  String? get redirectFrom;
  @override
  String? get selectedId;
  @override
  @JsonKey(ignore: true)
  _$$AddTransactionStateModelImplCopyWith<_$AddTransactionStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
