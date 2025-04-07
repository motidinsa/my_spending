// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryModel {

 String get categoryName; String get categoryId; bool? get hasSubcategory; DateTime get dateCreated; DateTime? get dateModified;
/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<CategoryModel> get copyWith => _$CategoryModelCopyWithImpl<CategoryModel>(this as CategoryModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryModel&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.hasSubcategory, hasSubcategory) || other.hasSubcategory == hasSubcategory)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,categoryName,categoryId,hasSubcategory,dateCreated,dateModified);

@override
String toString() {
  return 'CategoryModel(categoryName: $categoryName, categoryId: $categoryId, hasSubcategory: $hasSubcategory, dateCreated: $dateCreated, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class $CategoryModelCopyWith<$Res>  {
  factory $CategoryModelCopyWith(CategoryModel value, $Res Function(CategoryModel) _then) = _$CategoryModelCopyWithImpl;
@useResult
$Res call({
 String categoryName, String categoryId, bool? hasSubcategory, DateTime dateCreated, DateTime? dateModified
});




}
/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._self, this._then);

  final CategoryModel _self;
  final $Res Function(CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryName = null,Object? categoryId = null,Object? hasSubcategory = freezed,Object? dateCreated = null,Object? dateModified = freezed,}) {
  return _then(_self.copyWith(
categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,hasSubcategory: freezed == hasSubcategory ? _self.hasSubcategory : hasSubcategory // ignore: cast_nullable_to_non_nullable
as bool?,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc


class _CategoryModel implements CategoryModel {
  const _CategoryModel({required this.categoryName, required this.categoryId, this.hasSubcategory, required this.dateCreated, this.dateModified});
  

@override final  String categoryName;
@override final  String categoryId;
@override final  bool? hasSubcategory;
@override final  DateTime dateCreated;
@override final  DateTime? dateModified;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryModelCopyWith<_CategoryModel> get copyWith => __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryModel&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.hasSubcategory, hasSubcategory) || other.hasSubcategory == hasSubcategory)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}


@override
int get hashCode => Object.hash(runtimeType,categoryName,categoryId,hasSubcategory,dateCreated,dateModified);

@override
String toString() {
  return 'CategoryModel(categoryName: $categoryName, categoryId: $categoryId, hasSubcategory: $hasSubcategory, dateCreated: $dateCreated, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class _$CategoryModelCopyWith<$Res> implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(_CategoryModel value, $Res Function(_CategoryModel) _then) = __$CategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String categoryName, String categoryId, bool? hasSubcategory, DateTime dateCreated, DateTime? dateModified
});




}
/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(this._self, this._then);

  final _CategoryModel _self;
  final $Res Function(_CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryName = null,Object? categoryId = null,Object? hasSubcategory = freezed,Object? dateCreated = null,Object? dateModified = freezed,}) {
  return _then(_CategoryModel(
categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,hasSubcategory: freezed == hasSubcategory ? _self.hasSubcategory : hasSubcategory // ignore: cast_nullable_to_non_nullable
as bool?,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as DateTime,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
