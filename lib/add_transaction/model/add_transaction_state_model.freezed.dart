// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_transaction_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddTransactionModel {

 TransactionModel get transactionModel; bool? get isAmountAddButtonPressed; String get transactionType;
/// Create a copy of AddTransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTransactionModelCopyWith<AddTransactionModel> get copyWith => _$AddTransactionModelCopyWithImpl<AddTransactionModel>(this as AddTransactionModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTransactionModel&&(identical(other.transactionModel, transactionModel) || other.transactionModel == transactionModel)&&(identical(other.isAmountAddButtonPressed, isAmountAddButtonPressed) || other.isAmountAddButtonPressed == isAmountAddButtonPressed)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType));
}


@override
int get hashCode => Object.hash(runtimeType,transactionModel,isAmountAddButtonPressed,transactionType);

@override
String toString() {
  return 'AddTransactionModel(transactionModel: $transactionModel, isAmountAddButtonPressed: $isAmountAddButtonPressed, transactionType: $transactionType)';
}


}

/// @nodoc
abstract mixin class $AddTransactionModelCopyWith<$Res>  {
  factory $AddTransactionModelCopyWith(AddTransactionModel value, $Res Function(AddTransactionModel) _then) = _$AddTransactionModelCopyWithImpl;
@useResult
$Res call({
 TransactionModel transactionModel, bool? isAmountAddButtonPressed, String transactionType
});


$TransactionModelCopyWith<$Res> get transactionModel;

}
/// @nodoc
class _$AddTransactionModelCopyWithImpl<$Res>
    implements $AddTransactionModelCopyWith<$Res> {
  _$AddTransactionModelCopyWithImpl(this._self, this._then);

  final AddTransactionModel _self;
  final $Res Function(AddTransactionModel) _then;

/// Create a copy of AddTransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionModel = null,Object? isAmountAddButtonPressed = freezed,Object? transactionType = null,}) {
  return _then(_self.copyWith(
transactionModel: null == transactionModel ? _self.transactionModel : transactionModel // ignore: cast_nullable_to_non_nullable
as TransactionModel,isAmountAddButtonPressed: freezed == isAmountAddButtonPressed ? _self.isAmountAddButtonPressed : isAmountAddButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AddTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<$Res> get transactionModel {
  
  return $TransactionModelCopyWith<$Res>(_self.transactionModel, (value) {
    return _then(_self.copyWith(transactionModel: value));
  });
}
}


/// @nodoc


class _AddTransactionModel implements AddTransactionModel {
  const _AddTransactionModel({required this.transactionModel, this.isAmountAddButtonPressed, required this.transactionType});
  

@override final  TransactionModel transactionModel;
@override final  bool? isAmountAddButtonPressed;
@override final  String transactionType;

/// Create a copy of AddTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTransactionModelCopyWith<_AddTransactionModel> get copyWith => __$AddTransactionModelCopyWithImpl<_AddTransactionModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTransactionModel&&(identical(other.transactionModel, transactionModel) || other.transactionModel == transactionModel)&&(identical(other.isAmountAddButtonPressed, isAmountAddButtonPressed) || other.isAmountAddButtonPressed == isAmountAddButtonPressed)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType));
}


@override
int get hashCode => Object.hash(runtimeType,transactionModel,isAmountAddButtonPressed,transactionType);

@override
String toString() {
  return 'AddTransactionModel(transactionModel: $transactionModel, isAmountAddButtonPressed: $isAmountAddButtonPressed, transactionType: $transactionType)';
}


}

/// @nodoc
abstract mixin class _$AddTransactionModelCopyWith<$Res> implements $AddTransactionModelCopyWith<$Res> {
  factory _$AddTransactionModelCopyWith(_AddTransactionModel value, $Res Function(_AddTransactionModel) _then) = __$AddTransactionModelCopyWithImpl;
@override @useResult
$Res call({
 TransactionModel transactionModel, bool? isAmountAddButtonPressed, String transactionType
});


@override $TransactionModelCopyWith<$Res> get transactionModel;

}
/// @nodoc
class __$AddTransactionModelCopyWithImpl<$Res>
    implements _$AddTransactionModelCopyWith<$Res> {
  __$AddTransactionModelCopyWithImpl(this._self, this._then);

  final _AddTransactionModel _self;
  final $Res Function(_AddTransactionModel) _then;

/// Create a copy of AddTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionModel = null,Object? isAmountAddButtonPressed = freezed,Object? transactionType = null,}) {
  return _then(_AddTransactionModel(
transactionModel: null == transactionModel ? _self.transactionModel : transactionModel // ignore: cast_nullable_to_non_nullable
as TransactionModel,isAmountAddButtonPressed: freezed == isAmountAddButtonPressed ? _self.isAmountAddButtonPressed : isAmountAddButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AddTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<$Res> get transactionModel {
  
  return $TransactionModelCopyWith<$Res>(_self.transactionModel, (value) {
    return _then(_self.copyWith(transactionModel: value));
  });
}
}

// dart format on
