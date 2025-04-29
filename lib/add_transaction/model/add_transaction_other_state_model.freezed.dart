// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_transaction_other_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTransactionOtherStateModel {
// required List<CategoryModel> categoryModels,
// List<SubcategoryModel>? subcategoryModels,
  List<AccountGroupModel> get accountGroupModels =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTransactionOtherStateModelCopyWith<AddTransactionOtherStateModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionOtherStateModelCopyWith<$Res> {
  factory $AddTransactionOtherStateModelCopyWith(
          AddTransactionOtherStateModel value,
          $Res Function(AddTransactionOtherStateModel) then) =
      _$AddTransactionOtherStateModelCopyWithImpl<$Res,
          AddTransactionOtherStateModel>;
  @useResult
  $Res call({List<AccountGroupModel> accountGroupModels});
}

/// @nodoc
class _$AddTransactionOtherStateModelCopyWithImpl<$Res,
        $Val extends AddTransactionOtherStateModel>
    implements $AddTransactionOtherStateModelCopyWith<$Res> {
  _$AddTransactionOtherStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountGroupModels = null,
  }) {
    return _then(_value.copyWith(
      accountGroupModels: null == accountGroupModels
          ? _value.accountGroupModels
          : accountGroupModels // ignore: cast_nullable_to_non_nullable
              as List<AccountGroupModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTransactionOtherStateModelImplCopyWith<$Res>
    implements $AddTransactionOtherStateModelCopyWith<$Res> {
  factory _$$AddTransactionOtherStateModelImplCopyWith(
          _$AddTransactionOtherStateModelImpl value,
          $Res Function(_$AddTransactionOtherStateModelImpl) then) =
      __$$AddTransactionOtherStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AccountGroupModel> accountGroupModels});
}

/// @nodoc
class __$$AddTransactionOtherStateModelImplCopyWithImpl<$Res>
    extends _$AddTransactionOtherStateModelCopyWithImpl<$Res,
        _$AddTransactionOtherStateModelImpl>
    implements _$$AddTransactionOtherStateModelImplCopyWith<$Res> {
  __$$AddTransactionOtherStateModelImplCopyWithImpl(
      _$AddTransactionOtherStateModelImpl _value,
      $Res Function(_$AddTransactionOtherStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountGroupModels = null,
  }) {
    return _then(_$AddTransactionOtherStateModelImpl(
      accountGroupModels: null == accountGroupModels
          ? _value._accountGroupModels
          : accountGroupModels // ignore: cast_nullable_to_non_nullable
              as List<AccountGroupModel>,
    ));
  }
}

/// @nodoc

class _$AddTransactionOtherStateModelImpl
    implements _AddTransactionOtherStateModel {
  const _$AddTransactionOtherStateModelImpl(
      {required final List<AccountGroupModel> accountGroupModels})
      : _accountGroupModels = accountGroupModels;

// required List<CategoryModel> categoryModels,
// List<SubcategoryModel>? subcategoryModels,
  final List<AccountGroupModel> _accountGroupModels;
// required List<CategoryModel> categoryModels,
// List<SubcategoryModel>? subcategoryModels,
  @override
  List<AccountGroupModel> get accountGroupModels {
    if (_accountGroupModels is EqualUnmodifiableListView)
      return _accountGroupModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountGroupModels);
  }

  @override
  String toString() {
    return 'AddTransactionOtherStateModel(accountGroupModels: $accountGroupModels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionOtherStateModelImpl &&
            const DeepCollectionEquality()
                .equals(other._accountGroupModels, _accountGroupModels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_accountGroupModels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionOtherStateModelImplCopyWith<
          _$AddTransactionOtherStateModelImpl>
      get copyWith => __$$AddTransactionOtherStateModelImplCopyWithImpl<
          _$AddTransactionOtherStateModelImpl>(this, _$identity);
}

abstract class _AddTransactionOtherStateModel
    implements AddTransactionOtherStateModel {
  const factory _AddTransactionOtherStateModel(
          {required final List<AccountGroupModel> accountGroupModels}) =
      _$AddTransactionOtherStateModelImpl;

  @override // required List<CategoryModel> categoryModels,
// List<SubcategoryModel>? subcategoryModels,
  List<AccountGroupModel> get accountGroupModels;
  @override
  @JsonKey(ignore: true)
  _$$AddTransactionOtherStateModelImplCopyWith<
          _$AddTransactionOtherStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
