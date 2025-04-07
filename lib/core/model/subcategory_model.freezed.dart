// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcategory_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubcategoryModel {

 String get subcategoryName; String get subcategoryId; String get categoryId; DateTime get dateCreated; DateTime? get dateModified;
/// Create a copy of SubcategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubcategoryModelCopyWith<SubcategoryModel> get copyWith => _$SubcategoryModelCopyWithImpl<SubcategoryModel>(this as SubcategoryModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubcategoryModel&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,subcategoryName,subcategoryId,categoryId,dateCreated,dateModified);

@override
String toString() {
  return 'SubcategoryModel(subcategoryName: $subcategoryName, subcategoryId: $subcategoryId, categoryId: $categoryId, dateCreated: $dateCreated, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class $SubcategoryModelCopyWith<$Res>  {
  factory $SubcategoryModelCopyWith(SubcategoryModel value, $Res Function(SubcategoryModel) _then) = _$SubcategoryModelCopyWithImpl;
@useResult
$Res call({
 String subcategoryName, String subcategoryId, String categoryId, DateTime dateCreated, DateTime? dateModified
});




}
/// @nodoc
class _$SubcategoryModelCopyWithImpl<$Res>
    implements $SubcategoryModelCopyWith<$Res> {
  _$SubcategoryModelCopyWithImpl(this._self, this._then);

  final SubcategoryModel _self;
  final $Res Function(SubcategoryModel) _then;

/// Create a copy of SubcategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subcategoryName = null,Object? subcategoryId = null,Object? categoryId = null,Object? dateCreated = null,Object? dateModified = freezed,}) {
  return _then(_self.copyWith(
subcategoryName: null == subcategoryName ? _self.subcategoryName : subcategoryName // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc


class _SubcategoryModel implements SubcategoryModel {
  const _SubcategoryModel({required this.subcategoryName, required this.subcategoryId, required this.categoryId, required this.dateCreated, this.dateModified});
  

@override final  String subcategoryName;
@override final  String subcategoryId;
@override final  String categoryId;
@override final  DateTime dateCreated;
@override final  DateTime? dateModified;

/// Create a copy of SubcategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubcategoryModelCopyWith<_SubcategoryModel> get copyWith => __$SubcategoryModelCopyWithImpl<_SubcategoryModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubcategoryModel&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,subcategoryName,subcategoryId,categoryId,dateCreated,dateModified);

@override
String toString() {
  return 'SubcategoryModel(subcategoryName: $subcategoryName, subcategoryId: $subcategoryId, categoryId: $categoryId, dateCreated: $dateCreated, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class _$SubcategoryModelCopyWith<$Res> implements $SubcategoryModelCopyWith<$Res> {
  factory _$SubcategoryModelCopyWith(_SubcategoryModel value, $Res Function(_SubcategoryModel) _then) = __$SubcategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String subcategoryName, String subcategoryId, String categoryId, DateTime dateCreated, DateTime? dateModified
});




}
/// @nodoc
class __$SubcategoryModelCopyWithImpl<$Res>
    implements _$SubcategoryModelCopyWith<$Res> {
  __$SubcategoryModelCopyWithImpl(this._self, this._then);

  final _SubcategoryModel _self;
  final $Res Function(_SubcategoryModel) _then;

/// Create a copy of SubcategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subcategoryName = null,Object? subcategoryId = null,Object? categoryId = null,Object? dateCreated = null,Object? dateModified = freezed,}) {
  return _then(_SubcategoryModel(
subcategoryName: null == subcategoryName ? _self.subcategoryName : subcategoryName // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
