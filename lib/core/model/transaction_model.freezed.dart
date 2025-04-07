// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionModel {

 String get accountName; String get accountId; String? get subAccountName; String? get subAccountId; String get categoryName; String get categoryId; String? get subcategoryName; String? get subcategoryId; double get amount; String? get description; DateTime get date; DateTime get dateCreated; DateTime? get dateModified;
/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<TransactionModel> get copyWith => _$TransactionModelCopyWithImpl<TransactionModel>(this as TransactionModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionModel&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.subAccountName, subAccountName) || other.subAccountName == subAccountName)&&(identical(other.subAccountId, subAccountId) || other.subAccountId == subAccountId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,accountName,accountId,subAccountName,subAccountId,categoryName,categoryId,subcategoryName,subcategoryId,amount,description,date,dateCreated,dateModified);

@override
String toString() {
  return 'TransactionModel(accountName: $accountName, accountId: $accountId, subAccountName: $subAccountName, subAccountId: $subAccountId, categoryName: $categoryName, categoryId: $categoryId, subcategoryName: $subcategoryName, subcategoryId: $subcategoryId, amount: $amount, description: $description, date: $date, dateCreated: $dateCreated, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class $TransactionModelCopyWith<$Res>  {
  factory $TransactionModelCopyWith(TransactionModel value, $Res Function(TransactionModel) _then) = _$TransactionModelCopyWithImpl;
@useResult
$Res call({
 String accountName, String accountId, String? subAccountName, String? subAccountId, String categoryName, String categoryId, String? subcategoryName, String? subcategoryId, double amount, String? description, DateTime date, DateTime dateCreated, DateTime? dateModified
});




}
/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._self, this._then);

  final TransactionModel _self;
  final $Res Function(TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountName = null,Object? accountId = null,Object? subAccountName = freezed,Object? subAccountId = freezed,Object? categoryName = null,Object? categoryId = null,Object? subcategoryName = freezed,Object? subcategoryId = freezed,Object? amount = null,Object? description = freezed,Object? date = null,Object? dateCreated = null,Object? dateModified = freezed,}) {
  return _then(_self.copyWith(
accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,subAccountName: freezed == subAccountName ? _self.subAccountName : subAccountName // ignore: cast_nullable_to_non_nullable
as String?,subAccountId: freezed == subAccountId ? _self.subAccountId : subAccountId // ignore: cast_nullable_to_non_nullable
as String?,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryName: freezed == subcategoryName ? _self.subcategoryName : subcategoryName // ignore: cast_nullable_to_non_nullable
as String?,subcategoryId: freezed == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc


class _TransactionModel implements TransactionModel {
  const _TransactionModel({required this.accountName, required this.accountId, this.subAccountName, this.subAccountId, required this.categoryName, required this.categoryId, this.subcategoryName, this.subcategoryId, required this.amount, this.description, required this.date, required this.dateCreated, this.dateModified});
  

@override final  String accountName;
@override final  String accountId;
@override final  String? subAccountName;
@override final  String? subAccountId;
@override final  String categoryName;
@override final  String categoryId;
@override final  String? subcategoryName;
@override final  String? subcategoryId;
@override final  double amount;
@override final  String? description;
@override final  DateTime date;
@override final  DateTime dateCreated;
@override final  DateTime? dateModified;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionModelCopyWith<_TransactionModel> get copyWith => __$TransactionModelCopyWithImpl<_TransactionModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionModel&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.subAccountName, subAccountName) || other.subAccountName == subAccountName)&&(identical(other.subAccountId, subAccountId) || other.subAccountId == subAccountId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,accountName,accountId,subAccountName,subAccountId,categoryName,categoryId,subcategoryName,subcategoryId,amount,description,date,dateCreated,dateModified);

@override
String toString() {
  return 'TransactionModel(accountName: $accountName, accountId: $accountId, subAccountName: $subAccountName, subAccountId: $subAccountId, categoryName: $categoryName, categoryId: $categoryId, subcategoryName: $subcategoryName, subcategoryId: $subcategoryId, amount: $amount, description: $description, date: $date, dateCreated: $dateCreated, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class _$TransactionModelCopyWith<$Res> implements $TransactionModelCopyWith<$Res> {
  factory _$TransactionModelCopyWith(_TransactionModel value, $Res Function(_TransactionModel) _then) = __$TransactionModelCopyWithImpl;
@override @useResult
$Res call({
 String accountName, String accountId, String? subAccountName, String? subAccountId, String categoryName, String categoryId, String? subcategoryName, String? subcategoryId, double amount, String? description, DateTime date, DateTime dateCreated, DateTime? dateModified
});




}
/// @nodoc
class __$TransactionModelCopyWithImpl<$Res>
    implements _$TransactionModelCopyWith<$Res> {
  __$TransactionModelCopyWithImpl(this._self, this._then);

  final _TransactionModel _self;
  final $Res Function(_TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountName = null,Object? accountId = null,Object? subAccountName = freezed,Object? subAccountId = freezed,Object? categoryName = null,Object? categoryId = null,Object? subcategoryName = freezed,Object? subcategoryId = freezed,Object? amount = null,Object? description = freezed,Object? date = null,Object? dateCreated = null,Object? dateModified = freezed,}) {
  return _then(_TransactionModel(
accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,subAccountName: freezed == subAccountName ? _self.subAccountName : subAccountName // ignore: cast_nullable_to_non_nullable
as String?,subAccountId: freezed == subAccountId ? _self.subAccountId : subAccountId // ignore: cast_nullable_to_non_nullable
as String?,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryName: freezed == subcategoryName ? _self.subcategoryName : subcategoryName // ignore: cast_nullable_to_non_nullable
as String?,subcategoryId: freezed == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
