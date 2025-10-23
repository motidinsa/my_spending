// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_subcategory_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditSubcategoryStateModel {

 bool? get isSaveButtonPressed; bool? get isLoading; bool? get hasSubcategoryNameFocus; String? get newCategoryName;
/// Create a copy of EditSubcategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditSubcategoryStateModelCopyWith<EditSubcategoryStateModel> get copyWith => _$EditSubcategoryStateModelCopyWithImpl<EditSubcategoryStateModel>(this as EditSubcategoryStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditSubcategoryStateModel&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasSubcategoryNameFocus, hasSubcategoryNameFocus) || other.hasSubcategoryNameFocus == hasSubcategoryNameFocus)&&(identical(other.newCategoryName, newCategoryName) || other.newCategoryName == newCategoryName));
}


@override
int get hashCode => Object.hash(runtimeType,isSaveButtonPressed,isLoading,hasSubcategoryNameFocus,newCategoryName);

@override
String toString() {
  return 'EditSubcategoryStateModel(isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasSubcategoryNameFocus: $hasSubcategoryNameFocus, newCategoryName: $newCategoryName)';
}


}

/// @nodoc
abstract mixin class $EditSubcategoryStateModelCopyWith<$Res>  {
  factory $EditSubcategoryStateModelCopyWith(EditSubcategoryStateModel value, $Res Function(EditSubcategoryStateModel) _then) = _$EditSubcategoryStateModelCopyWithImpl;
@useResult
$Res call({
 bool? isSaveButtonPressed, bool? isLoading, bool? hasSubcategoryNameFocus, String? newCategoryName
});




}
/// @nodoc
class _$EditSubcategoryStateModelCopyWithImpl<$Res>
    implements $EditSubcategoryStateModelCopyWith<$Res> {
  _$EditSubcategoryStateModelCopyWithImpl(this._self, this._then);

  final EditSubcategoryStateModel _self;
  final $Res Function(EditSubcategoryStateModel) _then;

/// Create a copy of EditSubcategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,Object? hasSubcategoryNameFocus = freezed,Object? newCategoryName = freezed,}) {
  return _then(_self.copyWith(
isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,hasSubcategoryNameFocus: freezed == hasSubcategoryNameFocus ? _self.hasSubcategoryNameFocus : hasSubcategoryNameFocus // ignore: cast_nullable_to_non_nullable
as bool?,newCategoryName: freezed == newCategoryName ? _self.newCategoryName : newCategoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditSubcategoryStateModel].
extension EditSubcategoryStateModelPatterns on EditSubcategoryStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditSubcategoryStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditSubcategoryStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditSubcategoryStateModel value)  $default,){
final _that = this;
switch (_that) {
case _EditSubcategoryStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditSubcategoryStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _EditSubcategoryStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? isSaveButtonPressed,  bool? isLoading,  bool? hasSubcategoryNameFocus,  String? newCategoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditSubcategoryStateModel() when $default != null:
return $default(_that.isSaveButtonPressed,_that.isLoading,_that.hasSubcategoryNameFocus,_that.newCategoryName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? isSaveButtonPressed,  bool? isLoading,  bool? hasSubcategoryNameFocus,  String? newCategoryName)  $default,) {final _that = this;
switch (_that) {
case _EditSubcategoryStateModel():
return $default(_that.isSaveButtonPressed,_that.isLoading,_that.hasSubcategoryNameFocus,_that.newCategoryName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? isSaveButtonPressed,  bool? isLoading,  bool? hasSubcategoryNameFocus,  String? newCategoryName)?  $default,) {final _that = this;
switch (_that) {
case _EditSubcategoryStateModel() when $default != null:
return $default(_that.isSaveButtonPressed,_that.isLoading,_that.hasSubcategoryNameFocus,_that.newCategoryName);case _:
  return null;

}
}

}

/// @nodoc


class _EditSubcategoryStateModel implements EditSubcategoryStateModel {
  const _EditSubcategoryStateModel({this.isSaveButtonPressed, this.isLoading, this.hasSubcategoryNameFocus, this.newCategoryName});
  

@override final  bool? isSaveButtonPressed;
@override final  bool? isLoading;
@override final  bool? hasSubcategoryNameFocus;
@override final  String? newCategoryName;

/// Create a copy of EditSubcategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditSubcategoryStateModelCopyWith<_EditSubcategoryStateModel> get copyWith => __$EditSubcategoryStateModelCopyWithImpl<_EditSubcategoryStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditSubcategoryStateModel&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasSubcategoryNameFocus, hasSubcategoryNameFocus) || other.hasSubcategoryNameFocus == hasSubcategoryNameFocus)&&(identical(other.newCategoryName, newCategoryName) || other.newCategoryName == newCategoryName));
}


@override
int get hashCode => Object.hash(runtimeType,isSaveButtonPressed,isLoading,hasSubcategoryNameFocus,newCategoryName);

@override
String toString() {
  return 'EditSubcategoryStateModel(isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasSubcategoryNameFocus: $hasSubcategoryNameFocus, newCategoryName: $newCategoryName)';
}


}

/// @nodoc
abstract mixin class _$EditSubcategoryStateModelCopyWith<$Res> implements $EditSubcategoryStateModelCopyWith<$Res> {
  factory _$EditSubcategoryStateModelCopyWith(_EditSubcategoryStateModel value, $Res Function(_EditSubcategoryStateModel) _then) = __$EditSubcategoryStateModelCopyWithImpl;
@override @useResult
$Res call({
 bool? isSaveButtonPressed, bool? isLoading, bool? hasSubcategoryNameFocus, String? newCategoryName
});




}
/// @nodoc
class __$EditSubcategoryStateModelCopyWithImpl<$Res>
    implements _$EditSubcategoryStateModelCopyWith<$Res> {
  __$EditSubcategoryStateModelCopyWithImpl(this._self, this._then);

  final _EditSubcategoryStateModel _self;
  final $Res Function(_EditSubcategoryStateModel) _then;

/// Create a copy of EditSubcategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,Object? hasSubcategoryNameFocus = freezed,Object? newCategoryName = freezed,}) {
  return _then(_EditSubcategoryStateModel(
isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,hasSubcategoryNameFocus: freezed == hasSubcategoryNameFocus ? _self.hasSubcategoryNameFocus : hasSubcategoryNameFocus // ignore: cast_nullable_to_non_nullable
as bool?,newCategoryName: freezed == newCategoryName ? _self.newCategoryName : newCategoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
