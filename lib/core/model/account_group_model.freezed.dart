// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccountGroupModel {

 String get groupName; String get groupId; DateTime get dateCreated; DateTime? get dateModified;
/// Create a copy of AccountGroupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountGroupModelCopyWith<AccountGroupModel> get copyWith => _$AccountGroupModelCopyWithImpl<AccountGroupModel>(this as AccountGroupModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountGroupModel&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,groupName,groupId,dateCreated,dateModified);

@override
String toString() {
  return 'AccountGroupModel(groupName: $groupName, groupId: $groupId, dateCreated: $dateCreated, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class $AccountGroupModelCopyWith<$Res>  {
  factory $AccountGroupModelCopyWith(AccountGroupModel value, $Res Function(AccountGroupModel) _then) = _$AccountGroupModelCopyWithImpl;
@useResult
$Res call({
 String groupName, String groupId, DateTime dateCreated, DateTime? dateModified
});




}
/// @nodoc
class _$AccountGroupModelCopyWithImpl<$Res>
    implements $AccountGroupModelCopyWith<$Res> {
  _$AccountGroupModelCopyWithImpl(this._self, this._then);

  final AccountGroupModel _self;
  final $Res Function(AccountGroupModel) _then;

/// Create a copy of AccountGroupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupName = null,Object? groupId = null,Object? dateCreated = null,Object? dateModified = freezed,}) {
  return _then(_self.copyWith(
groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc


class _AccountGroupModel implements AccountGroupModel {
  const _AccountGroupModel({required this.groupName, required this.groupId, required this.dateCreated, this.dateModified});
  

@override final  String groupName;
@override final  String groupId;
@override final  DateTime dateCreated;
@override final  DateTime? dateModified;

/// Create a copy of AccountGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountGroupModelCopyWith<_AccountGroupModel> get copyWith => __$AccountGroupModelCopyWithImpl<_AccountGroupModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountGroupModel&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,groupName,groupId,dateCreated,dateModified);

@override
String toString() {
  return 'AccountGroupModel(groupName: $groupName, groupId: $groupId, dateCreated: $dateCreated, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class _$AccountGroupModelCopyWith<$Res> implements $AccountGroupModelCopyWith<$Res> {
  factory _$AccountGroupModelCopyWith(_AccountGroupModel value, $Res Function(_AccountGroupModel) _then) = __$AccountGroupModelCopyWithImpl;
@override @useResult
$Res call({
 String groupName, String groupId, DateTime dateCreated, DateTime? dateModified
});




}
/// @nodoc
class __$AccountGroupModelCopyWithImpl<$Res>
    implements _$AccountGroupModelCopyWith<$Res> {
  __$AccountGroupModelCopyWithImpl(this._self, this._then);

  final _AccountGroupModel _self;
  final $Res Function(_AccountGroupModel) _then;

/// Create a copy of AccountGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupName = null,Object? groupId = null,Object? dateCreated = null,Object? dateModified = freezed,}) {
  return _then(_AccountGroupModel(
groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
