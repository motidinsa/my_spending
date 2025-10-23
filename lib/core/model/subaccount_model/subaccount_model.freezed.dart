// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subaccount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubAccountModel {

 String get subAccountName; String get subAccountId; String get accountId; DateTime get dateCreated; DateTime? get dateModified;
/// Create a copy of SubAccountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubAccountModelCopyWith<SubAccountModel> get copyWith => _$SubAccountModelCopyWithImpl<SubAccountModel>(this as SubAccountModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubAccountModel&&(identical(other.subAccountName, subAccountName) || other.subAccountName == subAccountName)&&(identical(other.subAccountId, subAccountId) || other.subAccountId == subAccountId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,subAccountName,subAccountId,accountId,dateCreated,dateModified);

@override
String toString() {
  return 'SubAccountModel(subAccountName: $subAccountName, subAccountId: $subAccountId, accountId: $accountId, dateCreated: $dateCreated, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class $SubAccountModelCopyWith<$Res>  {
  factory $SubAccountModelCopyWith(SubAccountModel value, $Res Function(SubAccountModel) _then) = _$SubAccountModelCopyWithImpl;
@useResult
$Res call({
 String subAccountName, String subAccountId, String accountId, DateTime dateCreated, DateTime? dateModified
});




}
/// @nodoc
class _$SubAccountModelCopyWithImpl<$Res>
    implements $SubAccountModelCopyWith<$Res> {
  _$SubAccountModelCopyWithImpl(this._self, this._then);

  final SubAccountModel _self;
  final $Res Function(SubAccountModel) _then;

/// Create a copy of SubAccountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subAccountName = null,Object? subAccountId = null,Object? accountId = null,Object? dateCreated = null,Object? dateModified = freezed,}) {
  return _then(_self.copyWith(
subAccountName: null == subAccountName ? _self.subAccountName : subAccountName // ignore: cast_nullable_to_non_nullable
as String,subAccountId: null == subAccountId ? _self.subAccountId : subAccountId // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubAccountModel].
extension SubAccountModelPatterns on SubAccountModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubAccountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubAccountModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubAccountModel value)  $default,){
final _that = this;
switch (_that) {
case _SubAccountModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubAccountModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubAccountModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subAccountName,  String subAccountId,  String accountId,  DateTime dateCreated,  DateTime? dateModified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubAccountModel() when $default != null:
return $default(_that.subAccountName,_that.subAccountId,_that.accountId,_that.dateCreated,_that.dateModified);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subAccountName,  String subAccountId,  String accountId,  DateTime dateCreated,  DateTime? dateModified)  $default,) {final _that = this;
switch (_that) {
case _SubAccountModel():
return $default(_that.subAccountName,_that.subAccountId,_that.accountId,_that.dateCreated,_that.dateModified);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subAccountName,  String subAccountId,  String accountId,  DateTime dateCreated,  DateTime? dateModified)?  $default,) {final _that = this;
switch (_that) {
case _SubAccountModel() when $default != null:
return $default(_that.subAccountName,_that.subAccountId,_that.accountId,_that.dateCreated,_that.dateModified);case _:
  return null;

}
}

}

/// @nodoc


class _SubAccountModel implements SubAccountModel {
  const _SubAccountModel({required this.subAccountName, required this.subAccountId, required this.accountId, required this.dateCreated, this.dateModified});
  

@override final  String subAccountName;
@override final  String subAccountId;
@override final  String accountId;
@override final  DateTime dateCreated;
@override final  DateTime? dateModified;

/// Create a copy of SubAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubAccountModelCopyWith<_SubAccountModel> get copyWith => __$SubAccountModelCopyWithImpl<_SubAccountModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubAccountModel&&(identical(other.subAccountName, subAccountName) || other.subAccountName == subAccountName)&&(identical(other.subAccountId, subAccountId) || other.subAccountId == subAccountId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,subAccountName,subAccountId,accountId,dateCreated,dateModified);

@override
String toString() {
  return 'SubAccountModel(subAccountName: $subAccountName, subAccountId: $subAccountId, accountId: $accountId, dateCreated: $dateCreated, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class _$SubAccountModelCopyWith<$Res> implements $SubAccountModelCopyWith<$Res> {
  factory _$SubAccountModelCopyWith(_SubAccountModel value, $Res Function(_SubAccountModel) _then) = __$SubAccountModelCopyWithImpl;
@override @useResult
$Res call({
 String subAccountName, String subAccountId, String accountId, DateTime dateCreated, DateTime? dateModified
});




}
/// @nodoc
class __$SubAccountModelCopyWithImpl<$Res>
    implements _$SubAccountModelCopyWith<$Res> {
  __$SubAccountModelCopyWithImpl(this._self, this._then);

  final _SubAccountModel _self;
  final $Res Function(_SubAccountModel) _then;

/// Create a copy of SubAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subAccountName = null,Object? subAccountId = null,Object? accountId = null,Object? dateCreated = null,Object? dateModified = freezed,}) {
  return _then(_SubAccountModel(
subAccountName: null == subAccountName ? _self.subAccountName : subAccountName // ignore: cast_nullable_to_non_nullable
as String,subAccountId: null == subAccountId ? _self.subAccountId : subAccountId // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
