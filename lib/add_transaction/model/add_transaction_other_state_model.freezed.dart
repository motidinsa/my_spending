// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_transaction_other_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddTransactionOtherStateModel {

 List<AccountGroupModel> get accountGroupModels;
/// Create a copy of AddTransactionOtherStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTransactionOtherStateModelCopyWith<AddTransactionOtherStateModel> get copyWith => _$AddTransactionOtherStateModelCopyWithImpl<AddTransactionOtherStateModel>(this as AddTransactionOtherStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTransactionOtherStateModel&&const DeepCollectionEquality().equals(other.accountGroupModels, accountGroupModels));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(accountGroupModels));

@override
String toString() {
  return 'AddTransactionOtherStateModel(accountGroupModels: $accountGroupModels)';
}


}

/// @nodoc
abstract mixin class $AddTransactionOtherStateModelCopyWith<$Res>  {
  factory $AddTransactionOtherStateModelCopyWith(AddTransactionOtherStateModel value, $Res Function(AddTransactionOtherStateModel) _then) = _$AddTransactionOtherStateModelCopyWithImpl;
@useResult
$Res call({
 List<AccountGroupModel> accountGroupModels
});




}
/// @nodoc
class _$AddTransactionOtherStateModelCopyWithImpl<$Res>
    implements $AddTransactionOtherStateModelCopyWith<$Res> {
  _$AddTransactionOtherStateModelCopyWithImpl(this._self, this._then);

  final AddTransactionOtherStateModel _self;
  final $Res Function(AddTransactionOtherStateModel) _then;

/// Create a copy of AddTransactionOtherStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountGroupModels = null,}) {
  return _then(_self.copyWith(
accountGroupModels: null == accountGroupModels ? _self.accountGroupModels : accountGroupModels // ignore: cast_nullable_to_non_nullable
as List<AccountGroupModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AddTransactionOtherStateModel].
extension AddTransactionOtherStateModelPatterns on AddTransactionOtherStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddTransactionOtherStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddTransactionOtherStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddTransactionOtherStateModel value)  $default,){
final _that = this;
switch (_that) {
case _AddTransactionOtherStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddTransactionOtherStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddTransactionOtherStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AccountGroupModel> accountGroupModels)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddTransactionOtherStateModel() when $default != null:
return $default(_that.accountGroupModels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AccountGroupModel> accountGroupModels)  $default,) {final _that = this;
switch (_that) {
case _AddTransactionOtherStateModel():
return $default(_that.accountGroupModels);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AccountGroupModel> accountGroupModels)?  $default,) {final _that = this;
switch (_that) {
case _AddTransactionOtherStateModel() when $default != null:
return $default(_that.accountGroupModels);case _:
  return null;

}
}

}

/// @nodoc


class _AddTransactionOtherStateModel implements AddTransactionOtherStateModel {
  const _AddTransactionOtherStateModel({required final  List<AccountGroupModel> accountGroupModels}): _accountGroupModels = accountGroupModels;
  

 final  List<AccountGroupModel> _accountGroupModels;
@override List<AccountGroupModel> get accountGroupModels {
  if (_accountGroupModels is EqualUnmodifiableListView) return _accountGroupModels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accountGroupModels);
}


/// Create a copy of AddTransactionOtherStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTransactionOtherStateModelCopyWith<_AddTransactionOtherStateModel> get copyWith => __$AddTransactionOtherStateModelCopyWithImpl<_AddTransactionOtherStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTransactionOtherStateModel&&const DeepCollectionEquality().equals(other._accountGroupModels, _accountGroupModels));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_accountGroupModels));

@override
String toString() {
  return 'AddTransactionOtherStateModel(accountGroupModels: $accountGroupModels)';
}


}

/// @nodoc
abstract mixin class _$AddTransactionOtherStateModelCopyWith<$Res> implements $AddTransactionOtherStateModelCopyWith<$Res> {
  factory _$AddTransactionOtherStateModelCopyWith(_AddTransactionOtherStateModel value, $Res Function(_AddTransactionOtherStateModel) _then) = __$AddTransactionOtherStateModelCopyWithImpl;
@override @useResult
$Res call({
 List<AccountGroupModel> accountGroupModels
});




}
/// @nodoc
class __$AddTransactionOtherStateModelCopyWithImpl<$Res>
    implements _$AddTransactionOtherStateModelCopyWith<$Res> {
  __$AddTransactionOtherStateModelCopyWithImpl(this._self, this._then);

  final _AddTransactionOtherStateModel _self;
  final $Res Function(_AddTransactionOtherStateModel) _then;

/// Create a copy of AddTransactionOtherStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountGroupModels = null,}) {
  return _then(_AddTransactionOtherStateModel(
accountGroupModels: null == accountGroupModels ? _self._accountGroupModels : accountGroupModels // ignore: cast_nullable_to_non_nullable
as List<AccountGroupModel>,
  ));
}


}

// dart format on
