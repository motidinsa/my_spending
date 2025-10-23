// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_category_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditCategoryStateModel {

 bool? get isSaveButtonPressed; bool? get isLoading; bool? get hasCategoryNameFocus;
/// Create a copy of EditCategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditCategoryStateModelCopyWith<EditCategoryStateModel> get copyWith => _$EditCategoryStateModelCopyWithImpl<EditCategoryStateModel>(this as EditCategoryStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditCategoryStateModel&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasCategoryNameFocus, hasCategoryNameFocus) || other.hasCategoryNameFocus == hasCategoryNameFocus));
}


@override
int get hashCode => Object.hash(runtimeType,isSaveButtonPressed,isLoading,hasCategoryNameFocus);

@override
String toString() {
  return 'EditCategoryStateModel(isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasCategoryNameFocus: $hasCategoryNameFocus)';
}


}

/// @nodoc
abstract mixin class $EditCategoryStateModelCopyWith<$Res>  {
  factory $EditCategoryStateModelCopyWith(EditCategoryStateModel value, $Res Function(EditCategoryStateModel) _then) = _$EditCategoryStateModelCopyWithImpl;
@useResult
$Res call({
 bool? isSaveButtonPressed, bool? isLoading, bool? hasCategoryNameFocus
});




}
/// @nodoc
class _$EditCategoryStateModelCopyWithImpl<$Res>
    implements $EditCategoryStateModelCopyWith<$Res> {
  _$EditCategoryStateModelCopyWithImpl(this._self, this._then);

  final EditCategoryStateModel _self;
  final $Res Function(EditCategoryStateModel) _then;

/// Create a copy of EditCategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,Object? hasCategoryNameFocus = freezed,}) {
  return _then(_self.copyWith(
isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,hasCategoryNameFocus: freezed == hasCategoryNameFocus ? _self.hasCategoryNameFocus : hasCategoryNameFocus // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditCategoryStateModel].
extension EditCategoryStateModelPatterns on EditCategoryStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditCategoryStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditCategoryStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditCategoryStateModel value)  $default,){
final _that = this;
switch (_that) {
case _EditCategoryStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditCategoryStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _EditCategoryStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? isSaveButtonPressed,  bool? isLoading,  bool? hasCategoryNameFocus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditCategoryStateModel() when $default != null:
return $default(_that.isSaveButtonPressed,_that.isLoading,_that.hasCategoryNameFocus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? isSaveButtonPressed,  bool? isLoading,  bool? hasCategoryNameFocus)  $default,) {final _that = this;
switch (_that) {
case _EditCategoryStateModel():
return $default(_that.isSaveButtonPressed,_that.isLoading,_that.hasCategoryNameFocus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? isSaveButtonPressed,  bool? isLoading,  bool? hasCategoryNameFocus)?  $default,) {final _that = this;
switch (_that) {
case _EditCategoryStateModel() when $default != null:
return $default(_that.isSaveButtonPressed,_that.isLoading,_that.hasCategoryNameFocus);case _:
  return null;

}
}

}

/// @nodoc


class _EditCategoryStateModel implements EditCategoryStateModel {
  const _EditCategoryStateModel({this.isSaveButtonPressed, this.isLoading, this.hasCategoryNameFocus});
  

@override final  bool? isSaveButtonPressed;
@override final  bool? isLoading;
@override final  bool? hasCategoryNameFocus;

/// Create a copy of EditCategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditCategoryStateModelCopyWith<_EditCategoryStateModel> get copyWith => __$EditCategoryStateModelCopyWithImpl<_EditCategoryStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditCategoryStateModel&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasCategoryNameFocus, hasCategoryNameFocus) || other.hasCategoryNameFocus == hasCategoryNameFocus));
}


@override
int get hashCode => Object.hash(runtimeType,isSaveButtonPressed,isLoading,hasCategoryNameFocus);

@override
String toString() {
  return 'EditCategoryStateModel(isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasCategoryNameFocus: $hasCategoryNameFocus)';
}


}

/// @nodoc
abstract mixin class _$EditCategoryStateModelCopyWith<$Res> implements $EditCategoryStateModelCopyWith<$Res> {
  factory _$EditCategoryStateModelCopyWith(_EditCategoryStateModel value, $Res Function(_EditCategoryStateModel) _then) = __$EditCategoryStateModelCopyWithImpl;
@override @useResult
$Res call({
 bool? isSaveButtonPressed, bool? isLoading, bool? hasCategoryNameFocus
});




}
/// @nodoc
class __$EditCategoryStateModelCopyWithImpl<$Res>
    implements _$EditCategoryStateModelCopyWith<$Res> {
  __$EditCategoryStateModelCopyWithImpl(this._self, this._then);

  final _EditCategoryStateModel _self;
  final $Res Function(_EditCategoryStateModel) _then;

/// Create a copy of EditCategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,Object? hasCategoryNameFocus = freezed,}) {
  return _then(_EditCategoryStateModel(
isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,hasCategoryNameFocus: freezed == hasCategoryNameFocus ? _self.hasCategoryNameFocus : hasCategoryNameFocus // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
