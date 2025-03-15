// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppModel {

 int get selectedIndex;
/// Create a copy of AppModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppModelCopyWith<AppModel> get copyWith => _$AppModelCopyWithImpl<AppModel>(this as AppModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppModel&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex);

@override
String toString() {
  return 'AppModel(selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class $AppModelCopyWith<$Res>  {
  factory $AppModelCopyWith(AppModel value, $Res Function(AppModel) _then) = _$AppModelCopyWithImpl;
@useResult
$Res call({
 int selectedIndex
});




}
/// @nodoc
class _$AppModelCopyWithImpl<$Res>
    implements $AppModelCopyWith<$Res> {
  _$AppModelCopyWithImpl(this._self, this._then);

  final AppModel _self;
  final $Res Function(AppModel) _then;

/// Create a copy of AppModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedIndex = null,}) {
  return _then(_self.copyWith(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _AppModel implements AppModel {
  const _AppModel({required this.selectedIndex});
  

@override final  int selectedIndex;

/// Create a copy of AppModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppModelCopyWith<_AppModel> get copyWith => __$AppModelCopyWithImpl<_AppModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppModel&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex);

@override
String toString() {
  return 'AppModel(selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class _$AppModelCopyWith<$Res> implements $AppModelCopyWith<$Res> {
  factory _$AppModelCopyWith(_AppModel value, $Res Function(_AppModel) _then) = __$AppModelCopyWithImpl;
@override @useResult
$Res call({
 int selectedIndex
});




}
/// @nodoc
class __$AppModelCopyWithImpl<$Res>
    implements _$AppModelCopyWith<$Res> {
  __$AppModelCopyWithImpl(this._self, this._then);

  final _AppModel _self;
  final $Res Function(_AppModel) _then;

/// Create a copy of AppModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedIndex = null,}) {
  return _then(_AppModel(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
