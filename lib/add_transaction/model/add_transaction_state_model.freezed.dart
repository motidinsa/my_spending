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

 TransactionModel get transactionModel; String get amount; bool? get isAmountAddButtonPressed; String get transactionType; double? get modalHeight; String? get redirectFrom; List<CategoryModel> get categoryModels; List<SubcategoryModel>? get subcategoryModels; List<AccountModel> get accountModels; List<SubAccountModel>? get subAccountModels;
/// Create a copy of AddTransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTransactionModelCopyWith<AddTransactionModel> get copyWith => _$AddTransactionModelCopyWithImpl<AddTransactionModel>(this as AddTransactionModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTransactionModel&&(identical(other.transactionModel, transactionModel) || other.transactionModel == transactionModel)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isAmountAddButtonPressed, isAmountAddButtonPressed) || other.isAmountAddButtonPressed == isAmountAddButtonPressed)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.modalHeight, modalHeight) || other.modalHeight == modalHeight)&&(identical(other.redirectFrom, redirectFrom) || other.redirectFrom == redirectFrom)&&const DeepCollectionEquality().equals(other.categoryModels, categoryModels)&&const DeepCollectionEquality().equals(other.subcategoryModels, subcategoryModels)&&const DeepCollectionEquality().equals(other.accountModels, accountModels)&&const DeepCollectionEquality().equals(other.subAccountModels, subAccountModels));
}


@override
int get hashCode => Object.hash(runtimeType,transactionModel,amount,isAmountAddButtonPressed,transactionType,modalHeight,redirectFrom,const DeepCollectionEquality().hash(categoryModels),const DeepCollectionEquality().hash(subcategoryModels),const DeepCollectionEquality().hash(accountModels),const DeepCollectionEquality().hash(subAccountModels));

@override
String toString() {
  return 'AddTransactionModel(transactionModel: $transactionModel, amount: $amount, isAmountAddButtonPressed: $isAmountAddButtonPressed, transactionType: $transactionType, modalHeight: $modalHeight, redirectFrom: $redirectFrom, categoryModels: $categoryModels, subcategoryModels: $subcategoryModels, accountModels: $accountModels, subAccountModels: $subAccountModels)';
}


}

/// @nodoc
abstract mixin class $AddTransactionModelCopyWith<$Res>  {
  factory $AddTransactionModelCopyWith(AddTransactionModel value, $Res Function(AddTransactionModel) _then) = _$AddTransactionModelCopyWithImpl;
@useResult
$Res call({
 TransactionModel transactionModel, String amount, bool? isAmountAddButtonPressed, String transactionType, double? modalHeight, String? redirectFrom, List<CategoryModel> categoryModels, List<SubcategoryModel>? subcategoryModels, List<AccountModel> accountModels, List<SubAccountModel>? subAccountModels
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
@pragma('vm:prefer-inline') @override $Res call({Object? transactionModel = null,Object? amount = null,Object? isAmountAddButtonPressed = freezed,Object? transactionType = null,Object? modalHeight = freezed,Object? redirectFrom = freezed,Object? categoryModels = null,Object? subcategoryModels = freezed,Object? accountModels = null,Object? subAccountModels = freezed,}) {
  return _then(_self.copyWith(
transactionModel: null == transactionModel ? _self.transactionModel : transactionModel // ignore: cast_nullable_to_non_nullable
as TransactionModel,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,isAmountAddButtonPressed: freezed == isAmountAddButtonPressed ? _self.isAmountAddButtonPressed : isAmountAddButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,modalHeight: freezed == modalHeight ? _self.modalHeight : modalHeight // ignore: cast_nullable_to_non_nullable
as double?,redirectFrom: freezed == redirectFrom ? _self.redirectFrom : redirectFrom // ignore: cast_nullable_to_non_nullable
as String?,categoryModels: null == categoryModels ? _self.categoryModels : categoryModels // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,subcategoryModels: freezed == subcategoryModels ? _self.subcategoryModels : subcategoryModels // ignore: cast_nullable_to_non_nullable
as List<SubcategoryModel>?,accountModels: null == accountModels ? _self.accountModels : accountModels // ignore: cast_nullable_to_non_nullable
as List<AccountModel>,subAccountModels: freezed == subAccountModels ? _self.subAccountModels : subAccountModels // ignore: cast_nullable_to_non_nullable
as List<SubAccountModel>?,
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
  const _AddTransactionModel({required this.transactionModel, required this.amount, this.isAmountAddButtonPressed, required this.transactionType, this.modalHeight, this.redirectFrom, required final  List<CategoryModel> categoryModels, final  List<SubcategoryModel>? subcategoryModels, required final  List<AccountModel> accountModels, final  List<SubAccountModel>? subAccountModels}): _categoryModels = categoryModels,_subcategoryModels = subcategoryModels,_accountModels = accountModels,_subAccountModels = subAccountModels;
  

@override final  TransactionModel transactionModel;
@override final  String amount;
@override final  bool? isAmountAddButtonPressed;
@override final  String transactionType;
@override final  double? modalHeight;
@override final  String? redirectFrom;
 final  List<CategoryModel> _categoryModels;
@override List<CategoryModel> get categoryModels {
  if (_categoryModels is EqualUnmodifiableListView) return _categoryModels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryModels);
}

 final  List<SubcategoryModel>? _subcategoryModels;
@override List<SubcategoryModel>? get subcategoryModels {
  final value = _subcategoryModels;
  if (value == null) return null;
  if (_subcategoryModels is EqualUnmodifiableListView) return _subcategoryModels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AccountModel> _accountModels;
@override List<AccountModel> get accountModels {
  if (_accountModels is EqualUnmodifiableListView) return _accountModels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accountModels);
}

 final  List<SubAccountModel>? _subAccountModels;
@override List<SubAccountModel>? get subAccountModels {
  final value = _subAccountModels;
  if (value == null) return null;
  if (_subAccountModels is EqualUnmodifiableListView) return _subAccountModels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AddTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTransactionModelCopyWith<_AddTransactionModel> get copyWith => __$AddTransactionModelCopyWithImpl<_AddTransactionModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTransactionModel&&(identical(other.transactionModel, transactionModel) || other.transactionModel == transactionModel)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isAmountAddButtonPressed, isAmountAddButtonPressed) || other.isAmountAddButtonPressed == isAmountAddButtonPressed)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.modalHeight, modalHeight) || other.modalHeight == modalHeight)&&(identical(other.redirectFrom, redirectFrom) || other.redirectFrom == redirectFrom)&&const DeepCollectionEquality().equals(other._categoryModels, _categoryModels)&&const DeepCollectionEquality().equals(other._subcategoryModels, _subcategoryModels)&&const DeepCollectionEquality().equals(other._accountModels, _accountModels)&&const DeepCollectionEquality().equals(other._subAccountModels, _subAccountModels));
}


@override
int get hashCode => Object.hash(runtimeType,transactionModel,amount,isAmountAddButtonPressed,transactionType,modalHeight,redirectFrom,const DeepCollectionEquality().hash(_categoryModels),const DeepCollectionEquality().hash(_subcategoryModels),const DeepCollectionEquality().hash(_accountModels),const DeepCollectionEquality().hash(_subAccountModels));

@override
String toString() {
  return 'AddTransactionModel(transactionModel: $transactionModel, amount: $amount, isAmountAddButtonPressed: $isAmountAddButtonPressed, transactionType: $transactionType, modalHeight: $modalHeight, redirectFrom: $redirectFrom, categoryModels: $categoryModels, subcategoryModels: $subcategoryModels, accountModels: $accountModels, subAccountModels: $subAccountModels)';
}


}

/// @nodoc
abstract mixin class _$AddTransactionModelCopyWith<$Res> implements $AddTransactionModelCopyWith<$Res> {
  factory _$AddTransactionModelCopyWith(_AddTransactionModel value, $Res Function(_AddTransactionModel) _then) = __$AddTransactionModelCopyWithImpl;
@override @useResult
$Res call({
 TransactionModel transactionModel, String amount, bool? isAmountAddButtonPressed, String transactionType, double? modalHeight, String? redirectFrom, List<CategoryModel> categoryModels, List<SubcategoryModel>? subcategoryModels, List<AccountModel> accountModels, List<SubAccountModel>? subAccountModels
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
@override @pragma('vm:prefer-inline') $Res call({Object? transactionModel = null,Object? amount = null,Object? isAmountAddButtonPressed = freezed,Object? transactionType = null,Object? modalHeight = freezed,Object? redirectFrom = freezed,Object? categoryModels = null,Object? subcategoryModels = freezed,Object? accountModels = null,Object? subAccountModels = freezed,}) {
  return _then(_AddTransactionModel(
transactionModel: null == transactionModel ? _self.transactionModel : transactionModel // ignore: cast_nullable_to_non_nullable
as TransactionModel,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,isAmountAddButtonPressed: freezed == isAmountAddButtonPressed ? _self.isAmountAddButtonPressed : isAmountAddButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,modalHeight: freezed == modalHeight ? _self.modalHeight : modalHeight // ignore: cast_nullable_to_non_nullable
as double?,redirectFrom: freezed == redirectFrom ? _self.redirectFrom : redirectFrom // ignore: cast_nullable_to_non_nullable
as String?,categoryModels: null == categoryModels ? _self._categoryModels : categoryModels // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,subcategoryModels: freezed == subcategoryModels ? _self._subcategoryModels : subcategoryModels // ignore: cast_nullable_to_non_nullable
as List<SubcategoryModel>?,accountModels: null == accountModels ? _self._accountModels : accountModels // ignore: cast_nullable_to_non_nullable
as List<AccountModel>,subAccountModels: freezed == subAccountModels ? _self._subAccountModels : subAccountModels // ignore: cast_nullable_to_non_nullable
as List<SubAccountModel>?,
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
