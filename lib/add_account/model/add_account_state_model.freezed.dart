// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_account_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddAccountStateModel {
  String? get groupName => throw _privateConstructorUsedError;
  List<AccountGroupModel> get accountGroupModels =>
      throw _privateConstructorUsedError;
  bool? get isAccountGroupsLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAccountStateModelCopyWith<AddAccountStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAccountStateModelCopyWith<$Res> {
  factory $AddAccountStateModelCopyWith(AddAccountStateModel value,
          $Res Function(AddAccountStateModel) then) =
      _$AddAccountStateModelCopyWithImpl<$Res, AddAccountStateModel>;
  @useResult
  $Res call(
      {String? groupName,
      List<AccountGroupModel> accountGroupModels,
      bool? isAccountGroupsLoading});
}

/// @nodoc
class _$AddAccountStateModelCopyWithImpl<$Res,
        $Val extends AddAccountStateModel>
    implements $AddAccountStateModelCopyWith<$Res> {
  _$AddAccountStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = freezed,
    Object? accountGroupModels = null,
    Object? isAccountGroupsLoading = freezed,
  }) {
    return _then(_value.copyWith(
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountGroupModels: null == accountGroupModels
          ? _value.accountGroupModels
          : accountGroupModels // ignore: cast_nullable_to_non_nullable
              as List<AccountGroupModel>,
      isAccountGroupsLoading: freezed == isAccountGroupsLoading
          ? _value.isAccountGroupsLoading
          : isAccountGroupsLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAccountStateModelImplCopyWith<$Res>
    implements $AddAccountStateModelCopyWith<$Res> {
  factory _$$AddAccountStateModelImplCopyWith(_$AddAccountStateModelImpl value,
          $Res Function(_$AddAccountStateModelImpl) then) =
      __$$AddAccountStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? groupName,
      List<AccountGroupModel> accountGroupModels,
      bool? isAccountGroupsLoading});
}

/// @nodoc
class __$$AddAccountStateModelImplCopyWithImpl<$Res>
    extends _$AddAccountStateModelCopyWithImpl<$Res, _$AddAccountStateModelImpl>
    implements _$$AddAccountStateModelImplCopyWith<$Res> {
  __$$AddAccountStateModelImplCopyWithImpl(_$AddAccountStateModelImpl _value,
      $Res Function(_$AddAccountStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = freezed,
    Object? accountGroupModels = null,
    Object? isAccountGroupsLoading = freezed,
  }) {
    return _then(_$AddAccountStateModelImpl(
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountGroupModels: null == accountGroupModels
          ? _value._accountGroupModels
          : accountGroupModels // ignore: cast_nullable_to_non_nullable
              as List<AccountGroupModel>,
      isAccountGroupsLoading: freezed == isAccountGroupsLoading
          ? _value.isAccountGroupsLoading
          : isAccountGroupsLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AddAccountStateModelImpl implements _AddAccountStateModel {
  const _$AddAccountStateModelImpl(
      {this.groupName,
      final List<AccountGroupModel> accountGroupModels = const [],
      this.isAccountGroupsLoading})
      : _accountGroupModels = accountGroupModels;

  @override
  final String? groupName;
  final List<AccountGroupModel> _accountGroupModels;
  @override
  @JsonKey()
  List<AccountGroupModel> get accountGroupModels {
    if (_accountGroupModels is EqualUnmodifiableListView)
      return _accountGroupModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountGroupModels);
  }

  @override
  final bool? isAccountGroupsLoading;

  @override
  String toString() {
    return 'AddAccountStateModel(groupName: $groupName, accountGroupModels: $accountGroupModels, isAccountGroupsLoading: $isAccountGroupsLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAccountStateModelImpl &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            const DeepCollectionEquality()
                .equals(other._accountGroupModels, _accountGroupModels) &&
            (identical(other.isAccountGroupsLoading, isAccountGroupsLoading) ||
                other.isAccountGroupsLoading == isAccountGroupsLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupName,
      const DeepCollectionEquality().hash(_accountGroupModels),
      isAccountGroupsLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAccountStateModelImplCopyWith<_$AddAccountStateModelImpl>
      get copyWith =>
          __$$AddAccountStateModelImplCopyWithImpl<_$AddAccountStateModelImpl>(
              this, _$identity);
}

abstract class _AddAccountStateModel implements AddAccountStateModel {
  const factory _AddAccountStateModel(
      {final String? groupName,
      final List<AccountGroupModel> accountGroupModels,
      final bool? isAccountGroupsLoading}) = _$AddAccountStateModelImpl;

  @override
  String? get groupName;
  @override
  List<AccountGroupModel> get accountGroupModels;
  @override
  bool? get isAccountGroupsLoading;
  @override
  @JsonKey(ignore: true)
  _$$AddAccountStateModelImplCopyWith<_$AddAccountStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
