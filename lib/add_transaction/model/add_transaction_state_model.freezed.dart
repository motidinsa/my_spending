// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_transaction_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddTransactionStateModel {

 TransactionModel get transactionModel; bool? get isAmountAddButtonPressed; String get transactionType; double? get modalHeight; String? get redirectFrom; String? get selectedId; bool? get hasAmountFocus; String? get fromAccount; String? get toAccount; bool? get isSaveButtonPressed; bool? get isLoading;
/// Create a copy of AddTransactionStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTransactionStateModelCopyWith<AddTransactionStateModel> get copyWith => _$AddTransactionStateModelCopyWithImpl<AddTransactionStateModel>(this as AddTransactionStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTransactionStateModel&&(identical(other.transactionModel, transactionModel) || other.transactionModel == transactionModel)&&(identical(other.isAmountAddButtonPressed, isAmountAddButtonPressed) || other.isAmountAddButtonPressed == isAmountAddButtonPressed)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.modalHeight, modalHeight) || other.modalHeight == modalHeight)&&(identical(other.redirectFrom, redirectFrom) || other.redirectFrom == redirectFrom)&&(identical(other.selectedId, selectedId) || other.selectedId == selectedId)&&(identical(other.hasAmountFocus, hasAmountFocus) || other.hasAmountFocus == hasAmountFocus)&&(identical(other.fromAccount, fromAccount) || other.fromAccount == fromAccount)&&(identical(other.toAccount, toAccount) || other.toAccount == toAccount)&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,transactionModel,isAmountAddButtonPressed,transactionType,modalHeight,redirectFrom,selectedId,hasAmountFocus,fromAccount,toAccount,isSaveButtonPressed,isLoading);

@override
String toString() {
  return 'AddTransactionStateModel(transactionModel: $transactionModel, isAmountAddButtonPressed: $isAmountAddButtonPressed, transactionType: $transactionType, modalHeight: $modalHeight, redirectFrom: $redirectFrom, selectedId: $selectedId, hasAmountFocus: $hasAmountFocus, fromAccount: $fromAccount, toAccount: $toAccount, isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $AddTransactionStateModelCopyWith<$Res>  {
  factory $AddTransactionStateModelCopyWith(AddTransactionStateModel value, $Res Function(AddTransactionStateModel) _then) = _$AddTransactionStateModelCopyWithImpl;
@useResult
$Res call({
 TransactionModel transactionModel, bool? isAmountAddButtonPressed, String transactionType, double? modalHeight, String? redirectFrom, String? selectedId, bool? hasAmountFocus, String? fromAccount, String? toAccount, bool? isSaveButtonPressed, bool? isLoading
});


$TransactionModelCopyWith<$Res> get transactionModel;

}
/// @nodoc
class _$AddTransactionStateModelCopyWithImpl<$Res>
    implements $AddTransactionStateModelCopyWith<$Res> {
  _$AddTransactionStateModelCopyWithImpl(this._self, this._then);

  final AddTransactionStateModel _self;
  final $Res Function(AddTransactionStateModel) _then;

/// Create a copy of AddTransactionStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionModel = null,Object? isAmountAddButtonPressed = freezed,Object? transactionType = null,Object? modalHeight = freezed,Object? redirectFrom = freezed,Object? selectedId = freezed,Object? hasAmountFocus = freezed,Object? fromAccount = freezed,Object? toAccount = freezed,Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,}) {
  return _then(_self.copyWith(
transactionModel: null == transactionModel ? _self.transactionModel : transactionModel // ignore: cast_nullable_to_non_nullable
as TransactionModel,isAmountAddButtonPressed: freezed == isAmountAddButtonPressed ? _self.isAmountAddButtonPressed : isAmountAddButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,modalHeight: freezed == modalHeight ? _self.modalHeight : modalHeight // ignore: cast_nullable_to_non_nullable
as double?,redirectFrom: freezed == redirectFrom ? _self.redirectFrom : redirectFrom // ignore: cast_nullable_to_non_nullable
as String?,selectedId: freezed == selectedId ? _self.selectedId : selectedId // ignore: cast_nullable_to_non_nullable
as String?,hasAmountFocus: freezed == hasAmountFocus ? _self.hasAmountFocus : hasAmountFocus // ignore: cast_nullable_to_non_nullable
as bool?,fromAccount: freezed == fromAccount ? _self.fromAccount : fromAccount // ignore: cast_nullable_to_non_nullable
as String?,toAccount: freezed == toAccount ? _self.toAccount : toAccount // ignore: cast_nullable_to_non_nullable
as String?,isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of AddTransactionStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<$Res> get transactionModel {
  
  return $TransactionModelCopyWith<$Res>(_self.transactionModel, (value) {
    return _then(_self.copyWith(transactionModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddTransactionStateModel].
extension AddTransactionStateModelPatterns on AddTransactionStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddTransactionStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddTransactionStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddTransactionStateModel value)  $default,){
final _that = this;
switch (_that) {
case _AddTransactionStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddTransactionStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddTransactionStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransactionModel transactionModel,  bool? isAmountAddButtonPressed,  String transactionType,  double? modalHeight,  String? redirectFrom,  String? selectedId,  bool? hasAmountFocus,  String? fromAccount,  String? toAccount,  bool? isSaveButtonPressed,  bool? isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddTransactionStateModel() when $default != null:
return $default(_that.transactionModel,_that.isAmountAddButtonPressed,_that.transactionType,_that.modalHeight,_that.redirectFrom,_that.selectedId,_that.hasAmountFocus,_that.fromAccount,_that.toAccount,_that.isSaveButtonPressed,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransactionModel transactionModel,  bool? isAmountAddButtonPressed,  String transactionType,  double? modalHeight,  String? redirectFrom,  String? selectedId,  bool? hasAmountFocus,  String? fromAccount,  String? toAccount,  bool? isSaveButtonPressed,  bool? isLoading)  $default,) {final _that = this;
switch (_that) {
case _AddTransactionStateModel():
return $default(_that.transactionModel,_that.isAmountAddButtonPressed,_that.transactionType,_that.modalHeight,_that.redirectFrom,_that.selectedId,_that.hasAmountFocus,_that.fromAccount,_that.toAccount,_that.isSaveButtonPressed,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransactionModel transactionModel,  bool? isAmountAddButtonPressed,  String transactionType,  double? modalHeight,  String? redirectFrom,  String? selectedId,  bool? hasAmountFocus,  String? fromAccount,  String? toAccount,  bool? isSaveButtonPressed,  bool? isLoading)?  $default,) {final _that = this;
switch (_that) {
case _AddTransactionStateModel() when $default != null:
return $default(_that.transactionModel,_that.isAmountAddButtonPressed,_that.transactionType,_that.modalHeight,_that.redirectFrom,_that.selectedId,_that.hasAmountFocus,_that.fromAccount,_that.toAccount,_that.isSaveButtonPressed,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _AddTransactionStateModel implements AddTransactionStateModel {
  const _AddTransactionStateModel({required this.transactionModel, this.isAmountAddButtonPressed, required this.transactionType, this.modalHeight, this.redirectFrom, this.selectedId, this.hasAmountFocus, this.fromAccount, this.toAccount, this.isSaveButtonPressed, this.isLoading});
  

@override final  TransactionModel transactionModel;
@override final  bool? isAmountAddButtonPressed;
@override final  String transactionType;
@override final  double? modalHeight;
@override final  String? redirectFrom;
@override final  String? selectedId;
@override final  bool? hasAmountFocus;
@override final  String? fromAccount;
@override final  String? toAccount;
@override final  bool? isSaveButtonPressed;
@override final  bool? isLoading;

/// Create a copy of AddTransactionStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTransactionStateModelCopyWith<_AddTransactionStateModel> get copyWith => __$AddTransactionStateModelCopyWithImpl<_AddTransactionStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTransactionStateModel&&(identical(other.transactionModel, transactionModel) || other.transactionModel == transactionModel)&&(identical(other.isAmountAddButtonPressed, isAmountAddButtonPressed) || other.isAmountAddButtonPressed == isAmountAddButtonPressed)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.modalHeight, modalHeight) || other.modalHeight == modalHeight)&&(identical(other.redirectFrom, redirectFrom) || other.redirectFrom == redirectFrom)&&(identical(other.selectedId, selectedId) || other.selectedId == selectedId)&&(identical(other.hasAmountFocus, hasAmountFocus) || other.hasAmountFocus == hasAmountFocus)&&(identical(other.fromAccount, fromAccount) || other.fromAccount == fromAccount)&&(identical(other.toAccount, toAccount) || other.toAccount == toAccount)&&(identical(other.isSaveButtonPressed, isSaveButtonPressed) || other.isSaveButtonPressed == isSaveButtonPressed)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,transactionModel,isAmountAddButtonPressed,transactionType,modalHeight,redirectFrom,selectedId,hasAmountFocus,fromAccount,toAccount,isSaveButtonPressed,isLoading);

@override
String toString() {
  return 'AddTransactionStateModel(transactionModel: $transactionModel, isAmountAddButtonPressed: $isAmountAddButtonPressed, transactionType: $transactionType, modalHeight: $modalHeight, redirectFrom: $redirectFrom, selectedId: $selectedId, hasAmountFocus: $hasAmountFocus, fromAccount: $fromAccount, toAccount: $toAccount, isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$AddTransactionStateModelCopyWith<$Res> implements $AddTransactionStateModelCopyWith<$Res> {
  factory _$AddTransactionStateModelCopyWith(_AddTransactionStateModel value, $Res Function(_AddTransactionStateModel) _then) = __$AddTransactionStateModelCopyWithImpl;
@override @useResult
$Res call({
 TransactionModel transactionModel, bool? isAmountAddButtonPressed, String transactionType, double? modalHeight, String? redirectFrom, String? selectedId, bool? hasAmountFocus, String? fromAccount, String? toAccount, bool? isSaveButtonPressed, bool? isLoading
});


@override $TransactionModelCopyWith<$Res> get transactionModel;

}
/// @nodoc
class __$AddTransactionStateModelCopyWithImpl<$Res>
    implements _$AddTransactionStateModelCopyWith<$Res> {
  __$AddTransactionStateModelCopyWithImpl(this._self, this._then);

  final _AddTransactionStateModel _self;
  final $Res Function(_AddTransactionStateModel) _then;

/// Create a copy of AddTransactionStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionModel = null,Object? isAmountAddButtonPressed = freezed,Object? transactionType = null,Object? modalHeight = freezed,Object? redirectFrom = freezed,Object? selectedId = freezed,Object? hasAmountFocus = freezed,Object? fromAccount = freezed,Object? toAccount = freezed,Object? isSaveButtonPressed = freezed,Object? isLoading = freezed,}) {
  return _then(_AddTransactionStateModel(
transactionModel: null == transactionModel ? _self.transactionModel : transactionModel // ignore: cast_nullable_to_non_nullable
as TransactionModel,isAmountAddButtonPressed: freezed == isAmountAddButtonPressed ? _self.isAmountAddButtonPressed : isAmountAddButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,modalHeight: freezed == modalHeight ? _self.modalHeight : modalHeight // ignore: cast_nullable_to_non_nullable
as double?,redirectFrom: freezed == redirectFrom ? _self.redirectFrom : redirectFrom // ignore: cast_nullable_to_non_nullable
as String?,selectedId: freezed == selectedId ? _self.selectedId : selectedId // ignore: cast_nullable_to_non_nullable
as String?,hasAmountFocus: freezed == hasAmountFocus ? _self.hasAmountFocus : hasAmountFocus // ignore: cast_nullable_to_non_nullable
as bool?,fromAccount: freezed == fromAccount ? _self.fromAccount : fromAccount // ignore: cast_nullable_to_non_nullable
as String?,toAccount: freezed == toAccount ? _self.toAccount : toAccount // ignore: cast_nullable_to_non_nullable
as String?,isSaveButtonPressed: freezed == isSaveButtonPressed ? _self.isSaveButtonPressed : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of AddTransactionStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<$Res> get transactionModel {
  
  return $TransactionModelCopyWith<$Res>(_self.transactionModel, (value) {
    return _then(_self.copyWith(transactionModel: value));
  });
}
}

// dart format on
