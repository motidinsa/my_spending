// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_account_group_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddAccountGroupStateModel {

 String get groupName; bool? get isSaveButtonPressed; bool? get isLoading; bool? get hasGroupNameFocus;
/// Create a copy of AddAccountGroupStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddAccountGroupStateModelCopyWith<AddAccountGroupStateModel> get copyWith => _$AddAccountGroupStateModelCopyWithImpl<AddAccountGroupStateModel>(this as AddAccountGroupStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddAccountGroupStateModel&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasGroupNameFocus, hasGroupNameFocus) || other.hasGroupNameFocus == hasGroupNameFocus));
}


@override
int get hashCode => Object.hash(runtimeType,groupName,isSaveButtonPressed,isLoading,hasGroupNameFocus);

@override
String toString() {
  return 'AddAccountGroupStateModel(groupName: $groupName, isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasGroupNameFocus: $hasGroupNameFocus)';
}


}

/// @nodoc
abstract mixin class $AddAccountGroupStateModelCopyWith<$Res>  {
  factory $AddAccountGroupStateModelCopyWith(AddAccountGroupStateModel value, $Res Function(AddAccountGroupStateModel) _then) = _$AddAccountGroupStateModelCopyWithImpl;
@useResult
$Res call({
 String groupName, bool? isSaveButtonPressed, bool? isLoading, bool? hasGroupNameFocus
});




}
/// @nodoc
class _$AddAccountGroupStateModelCopyWithImpl<$Res>
    implements $AddAccountGroupStateModelCopyWith<$Res> {
  _$AddAccountGroupStateModelCopyWithImpl(this._self, this._then);

  final AddAccountGroupStateModel _self;
  final $Res Function(AddAccountGroupStateModel) _then;

/// Create a copy of AddAccountGroupStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupName = null,Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,Object? hasGroupNameFocus = freezed,}) {
  return _then(_self.copyWith(
groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,hasGroupNameFocus: freezed == hasGroupNameFocus ? _self.hasGroupNameFocus : hasGroupNameFocus // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddAccountGroupStateModel].
extension AddAccountGroupStateModelPatterns on AddAccountGroupStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddAccountGroupStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddAccountGroupStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddAccountGroupStateModel value)  $default,){
final _that = this;
switch (_that) {
case _AddAccountGroupStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddAccountGroupStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddAccountGroupStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String groupName,  bool? isSaveButtonPressed,  bool? isLoading,  bool? hasGroupNameFocus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddAccountGroupStateModel() when $default != null:
return $default(_that.groupName,_that.isSaveButtonPressed,_that.isLoading,_that.hasGroupNameFocus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String groupName,  bool? isSaveButtonPressed,  bool? isLoading,  bool? hasGroupNameFocus)  $default,) {final _that = this;
switch (_that) {
case _AddAccountGroupStateModel():
return $default(_that.groupName,_that.isSaveButtonPressed,_that.isLoading,_that.hasGroupNameFocus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String groupName,  bool? isSaveButtonPressed,  bool? isLoading,  bool? hasGroupNameFocus)?  $default,) {final _that = this;
switch (_that) {
case _AddAccountGroupStateModel() when $default != null:
return $default(_that.groupName,_that.isSaveButtonPressed,_that.isLoading,_that.hasGroupNameFocus);case _:
  return null;

}
}

}

/// @nodoc


class _AddAccountGroupStateModel implements AddAccountGroupStateModel {
  const _AddAccountGroupStateModel({required this.groupName, this.isSaveButtonPressed, this.isLoading, this.hasGroupNameFocus});
  

@override final  String groupName;
@override final  bool? isSaveButtonPressed;
@override final  bool? isLoading;
@override final  bool? hasGroupNameFocus;

/// Create a copy of AddAccountGroupStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddAccountGroupStateModelCopyWith<_AddAccountGroupStateModel> get copyWith => __$AddAccountGroupStateModelCopyWithImpl<_AddAccountGroupStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddAccountGroupStateModel&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasGroupNameFocus, hasGroupNameFocus) || other.hasGroupNameFocus == hasGroupNameFocus));
}


@override
int get hashCode => Object.hash(runtimeType,groupName,isSaveButtonPressed,isLoading,hasGroupNameFocus);

@override
String toString() {
  return 'AddAccountGroupStateModel(groupName: $groupName, isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasGroupNameFocus: $hasGroupNameFocus)';
}


}

/// @nodoc
abstract mixin class _$AddAccountGroupStateModelCopyWith<$Res> implements $AddAccountGroupStateModelCopyWith<$Res> {
  factory _$AddAccountGroupStateModelCopyWith(_AddAccountGroupStateModel value, $Res Function(_AddAccountGroupStateModel) _then) = __$AddAccountGroupStateModelCopyWithImpl;
@override @useResult
$Res call({
 String groupName, bool? isSaveButtonPressed, bool? isLoading, bool? hasGroupNameFocus
});




}
/// @nodoc
class __$AddAccountGroupStateModelCopyWithImpl<$Res>
    implements _$AddAccountGroupStateModelCopyWith<$Res> {
  __$AddAccountGroupStateModelCopyWithImpl(this._self, this._then);

  final _AddAccountGroupStateModel _self;
  final $Res Function(_AddAccountGroupStateModel) _then;

/// Create a copy of AddAccountGroupStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupName = null,Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,Object? hasGroupNameFocus = freezed,}) {
  return _then(_AddAccountGroupStateModel(
groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,hasGroupNameFocus: freezed == hasGroupNameFocus ? _self.hasGroupNameFocus : hasGroupNameFocus // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
