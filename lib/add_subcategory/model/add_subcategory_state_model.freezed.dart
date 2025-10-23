// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_subcategory_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddSubcategoryStateModel {

 bool? get isSaveButtonPressed; bool? get isLoading; bool? get hasSubcategoryNameFocus;
/// Create a copy of AddSubcategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddSubcategoryStateModelCopyWith<AddSubcategoryStateModel> get copyWith => _$AddSubcategoryStateModelCopyWithImpl<AddSubcategoryStateModel>(this as AddSubcategoryStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddSubcategoryStateModel&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasSubcategoryNameFocus, hasSubcategoryNameFocus) || other.hasSubcategoryNameFocus == hasSubcategoryNameFocus));
}


@override
int get hashCode => Object.hash(runtimeType,isSaveButtonPressed,isLoading,hasSubcategoryNameFocus);

@override
String toString() {
  return 'AddSubcategoryStateModel(isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasSubcategoryNameFocus: $hasSubcategoryNameFocus)';
}


}

/// @nodoc
abstract mixin class $AddSubcategoryStateModelCopyWith<$Res>  {
  factory $AddSubcategoryStateModelCopyWith(AddSubcategoryStateModel value, $Res Function(AddSubcategoryStateModel) _then) = _$AddSubcategoryStateModelCopyWithImpl;
@useResult
$Res call({
 bool? isSaveButtonPressed, bool? isLoading, bool? hasSubcategoryNameFocus
});




}
/// @nodoc
class _$AddSubcategoryStateModelCopyWithImpl<$Res>
    implements $AddSubcategoryStateModelCopyWith<$Res> {
  _$AddSubcategoryStateModelCopyWithImpl(this._self, this._then);

  final AddSubcategoryStateModel _self;
  final $Res Function(AddSubcategoryStateModel) _then;

/// Create a copy of AddSubcategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,Object? hasSubcategoryNameFocus = freezed,}) {
  return _then(_self.copyWith(
isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,hasSubcategoryNameFocus: freezed == hasSubcategoryNameFocus ? _self.hasSubcategoryNameFocus : hasSubcategoryNameFocus // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddSubcategoryStateModel].
extension AddSubcategoryStateModelPatterns on AddSubcategoryStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddSubcategoryStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddSubcategoryStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddSubcategoryStateModel value)  $default,){
final _that = this;
switch (_that) {
case _AddSubcategoryStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddSubcategoryStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddSubcategoryStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? isSaveButtonPressed,  bool? isLoading,  bool? hasSubcategoryNameFocus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddSubcategoryStateModel() when $default != null:
return $default(_that.isSaveButtonPressed,_that.isLoading,_that.hasSubcategoryNameFocus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? isSaveButtonPressed,  bool? isLoading,  bool? hasSubcategoryNameFocus)  $default,) {final _that = this;
switch (_that) {
case _AddSubcategoryStateModel():
return $default(_that.isSaveButtonPressed,_that.isLoading,_that.hasSubcategoryNameFocus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? isSaveButtonPressed,  bool? isLoading,  bool? hasSubcategoryNameFocus)?  $default,) {final _that = this;
switch (_that) {
case _AddSubcategoryStateModel() when $default != null:
return $default(_that.isSaveButtonPressed,_that.isLoading,_that.hasSubcategoryNameFocus);case _:
  return null;

}
}

}

/// @nodoc


class _AddSubcategoryStateModel implements AddSubcategoryStateModel {
  const _AddSubcategoryStateModel({this.isSaveButtonPressed, this.isLoading, this.hasSubcategoryNameFocus});
  

@override final  bool? isSaveButtonPressed;
@override final  bool? isLoading;
@override final  bool? hasSubcategoryNameFocus;

/// Create a copy of AddSubcategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddSubcategoryStateModelCopyWith<_AddSubcategoryStateModel> get copyWith => __$AddSubcategoryStateModelCopyWithImpl<_AddSubcategoryStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddSubcategoryStateModel&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasSubcategoryNameFocus, hasSubcategoryNameFocus) || other.hasSubcategoryNameFocus == hasSubcategoryNameFocus));
}


@override
int get hashCode => Object.hash(runtimeType,isSaveButtonPressed,isLoading,hasSubcategoryNameFocus);

@override
String toString() {
  return 'AddSubcategoryStateModel(isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasSubcategoryNameFocus: $hasSubcategoryNameFocus)';
}


}

/// @nodoc
abstract mixin class _$AddSubcategoryStateModelCopyWith<$Res> implements $AddSubcategoryStateModelCopyWith<$Res> {
  factory _$AddSubcategoryStateModelCopyWith(_AddSubcategoryStateModel value, $Res Function(_AddSubcategoryStateModel) _then) = __$AddSubcategoryStateModelCopyWithImpl;
@override @useResult
$Res call({
 bool? isSaveButtonPressed, bool? isLoading, bool? hasSubcategoryNameFocus
});




}
/// @nodoc
class __$AddSubcategoryStateModelCopyWithImpl<$Res>
    implements _$AddSubcategoryStateModelCopyWith<$Res> {
  __$AddSubcategoryStateModelCopyWithImpl(this._self, this._then);

  final _AddSubcategoryStateModel _self;
  final $Res Function(_AddSubcategoryStateModel) _then;

/// Create a copy of AddSubcategoryStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,Object? hasSubcategoryNameFocus = freezed,}) {
  return _then(_AddSubcategoryStateModel(
isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,hasSubcategoryNameFocus: freezed == hasSubcategoryNameFocus ? _self.hasSubcategoryNameFocus : hasSubcategoryNameFocus // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
