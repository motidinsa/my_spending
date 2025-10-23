// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_category_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddCategoryStateModel {

 bool? get isSaveButtonPressed; bool? get isLoading; bool? get hasCategoryNameFocus;
/// Create a copy of AddCategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCategoryStateModelCopyWith<AddCategoryStateModel> get copyWith => _$AddCategoryStateModelCopyWithImpl<AddCategoryStateModel>(this as AddCategoryStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCategoryStateModel&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasCategoryNameFocus, hasCategoryNameFocus) || other.hasCategoryNameFocus == hasCategoryNameFocus));
}


@override
int get hashCode => Object.hash(runtimeType,isSaveButtonPressed,isLoading,hasCategoryNameFocus);

@override
String toString() {
  return 'AddCategoryStateModel(isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasCategoryNameFocus: $hasCategoryNameFocus)';
}


}

/// @nodoc
abstract mixin class $AddCategoryStateModelCopyWith<$Res>  {
  factory $AddCategoryStateModelCopyWith(AddCategoryStateModel value, $Res Function(AddCategoryStateModel) _then) = _$AddCategoryStateModelCopyWithImpl;
@useResult
$Res call({
 bool? isSaveButtonPressed, bool? isLoading, bool? hasCategoryNameFocus
});




}
/// @nodoc
class _$AddCategoryStateModelCopyWithImpl<$Res>
    implements $AddCategoryStateModelCopyWith<$Res> {
  _$AddCategoryStateModelCopyWithImpl(this._self, this._then);

  final AddCategoryStateModel _self;
  final $Res Function(AddCategoryStateModel) _then;

/// Create a copy of AddCategoryStateModel
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


/// Adds pattern-matching-related methods to [AddCategoryStateModel].
extension AddCategoryStateModelPatterns on AddCategoryStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddCategoryStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddCategoryStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddCategoryStateModel value)  $default,){
final _that = this;
switch (_that) {
case _AddCategoryStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddCategoryStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddCategoryStateModel() when $default != null:
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
case _AddCategoryStateModel() when $default != null:
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
case _AddCategoryStateModel():
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
case _AddCategoryStateModel() when $default != null:
return $default(_that.isSaveButtonPressed,_that.isLoading,_that.hasCategoryNameFocus);case _:
  return null;

}
}

}

/// @nodoc


class _AddCategoryStateModel implements AddCategoryStateModel {
  const _AddCategoryStateModel({this.isSaveButtonPressed, this.isLoading, this.hasCategoryNameFocus});
  

@override final  bool? isSaveButtonPressed;
@override final  bool? isLoading;
@override final  bool? hasCategoryNameFocus;

/// Create a copy of AddCategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCategoryStateModelCopyWith<_AddCategoryStateModel> get copyWith => __$AddCategoryStateModelCopyWithImpl<_AddCategoryStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCategoryStateModel&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasCategoryNameFocus, hasCategoryNameFocus) || other.hasCategoryNameFocus == hasCategoryNameFocus));
}


@override
int get hashCode => Object.hash(runtimeType,isSaveButtonPressed,isLoading,hasCategoryNameFocus);

@override
String toString() {
  return 'AddCategoryStateModel(isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasCategoryNameFocus: $hasCategoryNameFocus)';
}


}

/// @nodoc
abstract mixin class _$AddCategoryStateModelCopyWith<$Res> implements $AddCategoryStateModelCopyWith<$Res> {
  factory _$AddCategoryStateModelCopyWith(_AddCategoryStateModel value, $Res Function(_AddCategoryStateModel) _then) = __$AddCategoryStateModelCopyWithImpl;
@override @useResult
$Res call({
 bool? isSaveButtonPressed, bool? isLoading, bool? hasCategoryNameFocus
});




}
/// @nodoc
class __$AddCategoryStateModelCopyWithImpl<$Res>
    implements _$AddCategoryStateModelCopyWith<$Res> {
  __$AddCategoryStateModelCopyWithImpl(this._self, this._then);

  final _AddCategoryStateModel _self;
  final $Res Function(_AddCategoryStateModel) _then;

/// Create a copy of AddCategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,Object? hasCategoryNameFocus = freezed,}) {
  return _then(_AddCategoryStateModel(
isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,hasCategoryNameFocus: freezed == hasCategoryNameFocus ? _self.hasCategoryNameFocus : hasCategoryNameFocus // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
