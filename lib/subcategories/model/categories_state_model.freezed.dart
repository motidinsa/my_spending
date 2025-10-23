// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoriesStateModel {

 String get selectedCategoryType; List<CategoryModel> get categoryList; bool get isAddCategoryVisible;
/// Create a copy of CategoriesStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesStateModelCopyWith<CategoriesStateModel> get copyWith => _$CategoriesStateModelCopyWithImpl<CategoriesStateModel>(this as CategoriesStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesStateModel&&(identical(other.selectedCategoryType, selectedCategoryType) || other.selectedCategoryType == selectedCategoryType)&&const DeepCollectionEquality().equals(other.categoryList, categoryList)&&(identical(other.isAddCategoryVisible, isAddCategoryVisible) || other.isAddCategoryVisible == isAddCategoryVisible));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCategoryType,const DeepCollectionEquality().hash(categoryList),isAddCategoryVisible);

@override
String toString() {
  return 'CategoriesStateModel(selectedCategoryType: $selectedCategoryType, categoryList: $categoryList, isAddCategoryVisible: $isAddCategoryVisible)';
}


}

/// @nodoc
abstract mixin class $CategoriesStateModelCopyWith<$Res>  {
  factory $CategoriesStateModelCopyWith(CategoriesStateModel value, $Res Function(CategoriesStateModel) _then) = _$CategoriesStateModelCopyWithImpl;
@useResult
$Res call({
 String selectedCategoryType, List<CategoryModel> categoryList, bool isAddCategoryVisible
});




}
/// @nodoc
class _$CategoriesStateModelCopyWithImpl<$Res>
    implements $CategoriesStateModelCopyWith<$Res> {
  _$CategoriesStateModelCopyWithImpl(this._self, this._then);

  final CategoriesStateModel _self;
  final $Res Function(CategoriesStateModel) _then;

/// Create a copy of CategoriesStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedCategoryType = null,Object? categoryList = null,Object? isAddCategoryVisible = null,}) {
  return _then(_self.copyWith(
selectedCategoryType: null == selectedCategoryType ? _self.selectedCategoryType : selectedCategoryType // ignore: cast_nullable_to_non_nullable
as String,categoryList: null == categoryList ? _self.categoryList : categoryList // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,isAddCategoryVisible: null == isAddCategoryVisible ? _self.isAddCategoryVisible : isAddCategoryVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoriesStateModel].
extension CategoriesStateModelPatterns on CategoriesStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoriesStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoriesStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoriesStateModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoriesStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoriesStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoriesStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String selectedCategoryType,  List<CategoryModel> categoryList,  bool isAddCategoryVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoriesStateModel() when $default != null:
return $default(_that.selectedCategoryType,_that.categoryList,_that.isAddCategoryVisible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String selectedCategoryType,  List<CategoryModel> categoryList,  bool isAddCategoryVisible)  $default,) {final _that = this;
switch (_that) {
case _CategoriesStateModel():
return $default(_that.selectedCategoryType,_that.categoryList,_that.isAddCategoryVisible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String selectedCategoryType,  List<CategoryModel> categoryList,  bool isAddCategoryVisible)?  $default,) {final _that = this;
switch (_that) {
case _CategoriesStateModel() when $default != null:
return $default(_that.selectedCategoryType,_that.categoryList,_that.isAddCategoryVisible);case _:
  return null;

}
}

}

/// @nodoc


class _CategoriesStateModel implements CategoriesStateModel {
  const _CategoriesStateModel({this.selectedCategoryType = LocaleKeys.expense, final  List<CategoryModel> categoryList = const [], this.isAddCategoryVisible = true}): _categoryList = categoryList;
  

@override@JsonKey() final  String selectedCategoryType;
 final  List<CategoryModel> _categoryList;
@override@JsonKey() List<CategoryModel> get categoryList {
  if (_categoryList is EqualUnmodifiableListView) return _categoryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryList);
}

@override@JsonKey() final  bool isAddCategoryVisible;

/// Create a copy of CategoriesStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesStateModelCopyWith<_CategoriesStateModel> get copyWith => __$CategoriesStateModelCopyWithImpl<_CategoriesStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesStateModel&&(identical(other.selectedCategoryType, selectedCategoryType) || other.selectedCategoryType == selectedCategoryType)&&const DeepCollectionEquality().equals(other._categoryList, _categoryList)&&(identical(other.isAddCategoryVisible, isAddCategoryVisible) || other.isAddCategoryVisible == isAddCategoryVisible));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCategoryType,const DeepCollectionEquality().hash(_categoryList),isAddCategoryVisible);

@override
String toString() {
  return 'CategoriesStateModel(selectedCategoryType: $selectedCategoryType, categoryList: $categoryList, isAddCategoryVisible: $isAddCategoryVisible)';
}


}

/// @nodoc
abstract mixin class _$CategoriesStateModelCopyWith<$Res> implements $CategoriesStateModelCopyWith<$Res> {
  factory _$CategoriesStateModelCopyWith(_CategoriesStateModel value, $Res Function(_CategoriesStateModel) _then) = __$CategoriesStateModelCopyWithImpl;
@override @useResult
$Res call({
 String selectedCategoryType, List<CategoryModel> categoryList, bool isAddCategoryVisible
});




}
/// @nodoc
class __$CategoriesStateModelCopyWithImpl<$Res>
    implements _$CategoriesStateModelCopyWith<$Res> {
  __$CategoriesStateModelCopyWithImpl(this._self, this._then);

  final _CategoriesStateModel _self;
  final $Res Function(_CategoriesStateModel) _then;

/// Create a copy of CategoriesStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedCategoryType = null,Object? categoryList = null,Object? isAddCategoryVisible = null,}) {
  return _then(_CategoriesStateModel(
selectedCategoryType: null == selectedCategoryType ? _self.selectedCategoryType : selectedCategoryType // ignore: cast_nullable_to_non_nullable
as String,categoryList: null == categoryList ? _self._categoryList : categoryList // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,isAddCategoryVisible: null == isAddCategoryVisible ? _self.isAddCategoryVisible : isAddCategoryVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
