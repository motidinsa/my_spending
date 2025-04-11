// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppStateModel {

 GlobalKey<FormState> get formKey;
/// Create a copy of AppStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateModelCopyWith<AppStateModel> get copyWith => _$AppStateModelCopyWithImpl<AppStateModel>(this as AppStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStateModel&&(identical(other.formKey, formKey) || other.formKey == formKey));
}


@override
int get hashCode => Object.hash(runtimeType,formKey);

@override
String toString() {
  return 'AppStateModel(formKey: $formKey)';
}


}

/// @nodoc
abstract mixin class $AppStateModelCopyWith<$Res>  {
  factory $AppStateModelCopyWith(AppStateModel value, $Res Function(AppStateModel) _then) = _$AppStateModelCopyWithImpl;
@useResult
$Res call({
 GlobalKey<FormState> formKey
});




}
/// @nodoc
class _$AppStateModelCopyWithImpl<$Res>
    implements $AppStateModelCopyWith<$Res> {
  _$AppStateModelCopyWithImpl(this._self, this._then);

  final AppStateModel _self;
  final $Res Function(AppStateModel) _then;

/// Create a copy of AppStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? formKey = null,}) {
  return _then(_self.copyWith(
formKey: null == formKey ? _self.formKey : formKey // ignore: cast_nullable_to_non_nullable
as GlobalKey<FormState>,
  ));
}

}


/// @nodoc


class _AppStateModel implements AppStateModel {
  const _AppStateModel({required this.formKey});
  

@override final  GlobalKey<FormState> formKey;

/// Create a copy of AppStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStateModelCopyWith<_AppStateModel> get copyWith => __$AppStateModelCopyWithImpl<_AppStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppStateModel&&(identical(other.formKey, formKey) || other.formKey == formKey));
}


@override
int get hashCode => Object.hash(runtimeType,formKey);

@override
String toString() {
  return 'AppStateModel(formKey: $formKey)';
}


}

/// @nodoc
abstract mixin class _$AppStateModelCopyWith<$Res> implements $AppStateModelCopyWith<$Res> {
  factory _$AppStateModelCopyWith(_AppStateModel value, $Res Function(_AppStateModel) _then) = __$AppStateModelCopyWithImpl;
@override @useResult
$Res call({
 GlobalKey<FormState> formKey
});




}
/// @nodoc
class __$AppStateModelCopyWithImpl<$Res>
    implements _$AppStateModelCopyWith<$Res> {
  __$AppStateModelCopyWithImpl(this._self, this._then);

  final _AppStateModel _self;
  final $Res Function(_AppStateModel) _then;

/// Create a copy of AppStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formKey = null,}) {
  return _then(_AppStateModel(
formKey: null == formKey ? _self.formKey : formKey // ignore: cast_nullable_to_non_nullable
as GlobalKey<FormState>,
  ));
}


}

// dart format on
