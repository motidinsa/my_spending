// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_account_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddAccountStateModel {

 String? get groupName; bool? get hasNameFocus; bool? get hasAmountFocus; bool? get isSaveButtonPressed; bool? get isLoading;
/// Create a copy of AddAccountStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddAccountStateModelCopyWith<AddAccountStateModel> get copyWith => _$AddAccountStateModelCopyWithImpl<AddAccountStateModel>(this as AddAccountStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddAccountStateModel&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.hasNameFocus, hasNameFocus) || other.hasNameFocus == hasNameFocus)&&(identical(other.hasAmountFocus, hasAmountFocus) || other.hasAmountFocus == hasAmountFocus)&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,groupName,hasNameFocus,hasAmountFocus,isSaveButtonPressed,isLoading);

@override
String toString() {
  return 'AddAccountStateModel(groupName: $groupName, hasNameFocus: $hasNameFocus, hasAmountFocus: $hasAmountFocus, isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $AddAccountStateModelCopyWith<$Res>  {
  factory $AddAccountStateModelCopyWith(AddAccountStateModel value, $Res Function(AddAccountStateModel) _then) = _$AddAccountStateModelCopyWithImpl;
@useResult
$Res call({
 String? groupName, bool? hasNameFocus, bool? hasAmountFocus, bool? isSaveButtonPressed, bool? isLoading
});




}
/// @nodoc
class _$AddAccountStateModelCopyWithImpl<$Res>
    implements $AddAccountStateModelCopyWith<$Res> {
  _$AddAccountStateModelCopyWithImpl(this._self, this._then);

  final AddAccountStateModel _self;
  final $Res Function(AddAccountStateModel) _then;

/// Create a copy of AddAccountStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupName = freezed,Object? hasNameFocus = freezed,Object? hasAmountFocus = freezed,Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,}) {
  return _then(_self.copyWith(
groupName: freezed == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String?,hasNameFocus: freezed == hasNameFocus ? _self.hasNameFocus : hasNameFocus // ignore: cast_nullable_to_non_nullable
as bool?,hasAmountFocus: freezed == hasAmountFocus ? _self.hasAmountFocus : hasAmountFocus // ignore: cast_nullable_to_non_nullable
as bool?,isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddAccountStateModel].
extension AddAccountStateModelPatterns on AddAccountStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddAccountStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddAccountStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddAccountStateModel value)  $default,){
final _that = this;
switch (_that) {
case _AddAccountStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddAccountStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddAccountStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? groupName,  bool? hasNameFocus,  bool? hasAmountFocus,  bool? isSaveButtonPressed,  bool? isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddAccountStateModel() when $default != null:
return $default(_that.groupName,_that.hasNameFocus,_that.hasAmountFocus,_that.isSaveButtonPressed,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? groupName,  bool? hasNameFocus,  bool? hasAmountFocus,  bool? isSaveButtonPressed,  bool? isLoading)  $default,) {final _that = this;
switch (_that) {
case _AddAccountStateModel():
return $default(_that.groupName,_that.hasNameFocus,_that.hasAmountFocus,_that.isSaveButtonPressed,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? groupName,  bool? hasNameFocus,  bool? hasAmountFocus,  bool? isSaveButtonPressed,  bool? isLoading)?  $default,) {final _that = this;
switch (_that) {
case _AddAccountStateModel() when $default != null:
return $default(_that.groupName,_that.hasNameFocus,_that.hasAmountFocus,_that.isSaveButtonPressed,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _AddAccountStateModel implements AddAccountStateModel {
  const _AddAccountStateModel({this.groupName, this.hasNameFocus, this.hasAmountFocus, this.isSaveButtonPressed, this.isLoading});
  

@override final  String? groupName;
@override final  bool? hasNameFocus;
@override final  bool? hasAmountFocus;
@override final  bool? isSaveButtonPressed;
@override final  bool? isLoading;

/// Create a copy of AddAccountStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddAccountStateModelCopyWith<_AddAccountStateModel> get copyWith => __$AddAccountStateModelCopyWithImpl<_AddAccountStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddAccountStateModel&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.hasNameFocus, hasNameFocus) || other.hasNameFocus == hasNameFocus)&&(identical(other.hasAmountFocus, hasAmountFocus) || other.hasAmountFocus == hasAmountFocus)&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,groupName,hasNameFocus,hasAmountFocus,isSaveButtonPressed,isLoading);

@override
String toString() {
  return 'AddAccountStateModel(groupName: $groupName, hasNameFocus: $hasNameFocus, hasAmountFocus: $hasAmountFocus, isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$AddAccountStateModelCopyWith<$Res> implements $AddAccountStateModelCopyWith<$Res> {
  factory _$AddAccountStateModelCopyWith(_AddAccountStateModel value, $Res Function(_AddAccountStateModel) _then) = __$AddAccountStateModelCopyWithImpl;
@override @useResult
$Res call({
 String? groupName, bool? hasNameFocus, bool? hasAmountFocus, bool? isSaveButtonPressed, bool? isLoading
});




}
/// @nodoc
class __$AddAccountStateModelCopyWithImpl<$Res>
    implements _$AddAccountStateModelCopyWith<$Res> {
  __$AddAccountStateModelCopyWithImpl(this._self, this._then);

  final _AddAccountStateModel _self;
  final $Res Function(_AddAccountStateModel) _then;

/// Create a copy of AddAccountStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupName = freezed,Object? hasNameFocus = freezed,Object? hasAmountFocus = freezed,Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,}) {
  return _then(_AddAccountStateModel(
groupName: freezed == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String?,hasNameFocus: freezed == hasNameFocus ? _self.hasNameFocus : hasNameFocus // ignore: cast_nullable_to_non_nullable
as bool?,hasAmountFocus: freezed == hasAmountFocus ? _self.hasAmountFocus : hasAmountFocus // ignore: cast_nullable_to_non_nullable
as bool?,isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
