// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccountModel {

 String get accountName; String get accountId; String? get accountGroupId; bool? get hasSubAccount; DateTime get dateCreated; double get amountAvailable; DateTime? get dateModified;
/// Create a copy of AccountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountModelCopyWith<AccountModel> get copyWith => _$AccountModelCopyWithImpl<AccountModel>(this as AccountModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountModel&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accountGroupId, accountGroupId) || other.accountGroupId == accountGroupId)&&(identical(other.hasSubAccount, hasSubAccount) || other.hasSubAccount == hasSubAccount)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.amountAvailable, amountAvailable) || other.amountAvailable == amountAvailable)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,accountName,accountId,accountGroupId,hasSubAccount,dateCreated,amountAvailable,dateModified);

@override
String toString() {
  return 'AccountModel(accountName: $accountName, accountId: $accountId, accountGroupId: $accountGroupId, hasSubAccount: $hasSubAccount, dateCreated: $dateCreated, amountAvailable: $amountAvailable, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class $AccountModelCopyWith<$Res>  {
  factory $AccountModelCopyWith(AccountModel value, $Res Function(AccountModel) _then) = _$AccountModelCopyWithImpl;
@useResult
$Res call({
 String accountName, String accountId, String? accountGroupId, bool? hasSubAccount, DateTime dateCreated, double amountAvailable, DateTime? dateModified
});




}
/// @nodoc
class _$AccountModelCopyWithImpl<$Res>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._self, this._then);

  final AccountModel _self;
  final $Res Function(AccountModel) _then;

/// Create a copy of AccountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountName = null,Object? accountId = null,Object? accountGroupId = freezed,Object? hasSubAccount = freezed,Object? dateCreated = null,Object? amountAvailable = null,Object? dateModified = freezed,}) {
  return _then(_self.copyWith(
accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accountGroupId: freezed == accountGroupId ? _self.accountGroupId : accountGroupId // ignore: cast_nullable_to_non_nullable
as String?,hasSubAccount: freezed == hasSubAccount ? _self.hasSubAccount : hasSubAccount // ignore: cast_nullable_to_non_nullable
as bool?,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,amountAvailable: null == amountAvailable ? _self.amountAvailable : amountAvailable // ignore: cast_nullable_to_non_nullable
as double,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc


class _AccountModel implements AccountModel {
  const _AccountModel({required this.accountName, required this.accountId, this.accountGroupId, this.hasSubAccount, required this.dateCreated, required this.amountAvailable, this.dateModified});
  

@override final  String accountName;
@override final  String accountId;
@override final  String? accountGroupId;
@override final  bool? hasSubAccount;
@override final  DateTime dateCreated;
@override final  double amountAvailable;
@override final  DateTime? dateModified;

/// Create a copy of AccountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountModelCopyWith<_AccountModel> get copyWith => __$AccountModelCopyWithImpl<_AccountModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountModel&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accountGroupId, accountGroupId) || other.accountGroupId == accountGroupId)&&(identical(other.hasSubAccount, hasSubAccount) || other.hasSubAccount == hasSubAccount)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.amountAvailable, amountAvailable) || other.amountAvailable == amountAvailable)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,accountName,accountId,accountGroupId,hasSubAccount,dateCreated,amountAvailable,dateModified);

@override
String toString() {
  return 'AccountModel(accountName: $accountName, accountId: $accountId, accountGroupId: $accountGroupId, hasSubAccount: $hasSubAccount, dateCreated: $dateCreated, amountAvailable: $amountAvailable, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class _$AccountModelCopyWith<$Res> implements $AccountModelCopyWith<$Res> {
  factory _$AccountModelCopyWith(_AccountModel value, $Res Function(_AccountModel) _then) = __$AccountModelCopyWithImpl;
@override @useResult
$Res call({
 String accountName, String accountId, String? accountGroupId, bool? hasSubAccount, DateTime dateCreated, double amountAvailable, DateTime? dateModified
});




}
/// @nodoc
class __$AccountModelCopyWithImpl<$Res>
    implements _$AccountModelCopyWith<$Res> {
  __$AccountModelCopyWithImpl(this._self, this._then);

  final _AccountModel _self;
  final $Res Function(_AccountModel) _then;

/// Create a copy of AccountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountName = null,Object? accountId = null,Object? accountGroupId = freezed,Object? hasSubAccount = freezed,Object? dateCreated = null,Object? amountAvailable = null,Object? dateModified = freezed,}) {
  return _then(_AccountModel(
accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accountGroupId: freezed == accountGroupId ? _self.accountGroupId : accountGroupId // ignore: cast_nullable_to_non_nullable
as String?,hasSubAccount: freezed == hasSubAccount ? _self.hasSubAccount : hasSubAccount // ignore: cast_nullable_to_non_nullable
as bool?,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,amountAvailable: null == amountAvailable ? _self.amountAvailable : amountAvailable // ignore: cast_nullable_to_non_nullable
as double,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
