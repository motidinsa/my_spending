// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

 String get groupName; bool? get isSaveButtonPressed;
/// Create a copy of AddAccountGroupStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddAccountGroupStateModelCopyWith<AddAccountGroupStateModel> get copyWith => _$AddAccountGroupStateModelCopyWithImpl<AddAccountGroupStateModel>(this as AddAccountGroupStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddAccountGroupStateModel&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed));
}


@override
int get hashCode => Object.hash(runtimeType,groupName,isSaveButtonPressed);

@override
String toString() {
  return 'AddAccountGroupStateModel(groupName: $groupName, isSaveButtonPressed: $isSaveButtonPressed)';
}


}

/// @nodoc
abstract mixin class $AddAccountGroupStateModelCopyWith<$Res>  {
  factory $AddAccountGroupStateModelCopyWith(AddAccountGroupStateModel value, $Res Function(AddAccountGroupStateModel) _then) = _$AddAccountGroupStateModelCopyWithImpl;
@useResult
$Res call({
 String groupName, bool? isSaveButtonPressed
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
@pragma('vm:prefer-inline') @override $Res call({Object? groupName = null,Object? isSaveButtonPressed = freezed,}) {
  return _then(_self.copyWith(
groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc


class _AddAccountGroupStateModel implements AddAccountGroupStateModel {
  const _AddAccountGroupStateModel({required this.groupName, this.isSaveButtonPressed});
  

@override final  String groupName;
@override final  bool? isSaveButtonPressed;

/// Create a copy of AddAccountGroupStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddAccountGroupStateModelCopyWith<_AddAccountGroupStateModel> get copyWith => __$AddAccountGroupStateModelCopyWithImpl<_AddAccountGroupStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddAccountGroupStateModel&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed));
}


@override
int get hashCode => Object.hash(runtimeType,groupName,isSaveButtonPressed);

@override
String toString() {
  return 'AddAccountGroupStateModel(groupName: $groupName, isSaveButtonPressed: $isSaveButtonPressed)';
}


}

/// @nodoc
abstract mixin class _$AddAccountGroupStateModelCopyWith<$Res> implements $AddAccountGroupStateModelCopyWith<$Res> {
  factory _$AddAccountGroupStateModelCopyWith(_AddAccountGroupStateModel value, $Res Function(_AddAccountGroupStateModel) _then) = __$AddAccountGroupStateModelCopyWithImpl;
@override @useResult
$Res call({
 String groupName, bool? isSaveButtonPressed
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
@override @pragma('vm:prefer-inline') $Res call({Object? groupName = null,Object? isSaveButtonPressed = freezed,}) {
  return _then(_AddAccountGroupStateModel(
groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
