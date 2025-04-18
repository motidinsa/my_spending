// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subaccount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubAccountModel {
  String get subAccountName => throw _privateConstructorUsedError;
  String get subAccountId => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  DateTime? get dateModified => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubAccountModelCopyWith<SubAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubAccountModelCopyWith<$Res> {
  factory $SubAccountModelCopyWith(
          SubAccountModel value, $Res Function(SubAccountModel) then) =
      _$SubAccountModelCopyWithImpl<$Res, SubAccountModel>;
  @useResult
  $Res call(
      {String subAccountName,
      String subAccountId,
      String accountId,
      DateTime dateCreated,
      DateTime? dateModified});
}

/// @nodoc
class _$SubAccountModelCopyWithImpl<$Res, $Val extends SubAccountModel>
    implements $SubAccountModelCopyWith<$Res> {
  _$SubAccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subAccountName = null,
    Object? subAccountId = null,
    Object? accountId = null,
    Object? dateCreated = null,
    Object? dateModified = freezed,
  }) {
    return _then(_value.copyWith(
      subAccountName: null == subAccountName
          ? _value.subAccountName
          : subAccountName // ignore: cast_nullable_to_non_nullable
              as String,
      subAccountId: null == subAccountId
          ? _value.subAccountId
          : subAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubAccountModelImplCopyWith<$Res>
    implements $SubAccountModelCopyWith<$Res> {
  factory _$$SubAccountModelImplCopyWith(_$SubAccountModelImpl value,
          $Res Function(_$SubAccountModelImpl) then) =
      __$$SubAccountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subAccountName,
      String subAccountId,
      String accountId,
      DateTime dateCreated,
      DateTime? dateModified});
}

/// @nodoc
class __$$SubAccountModelImplCopyWithImpl<$Res>
    extends _$SubAccountModelCopyWithImpl<$Res, _$SubAccountModelImpl>
    implements _$$SubAccountModelImplCopyWith<$Res> {
  __$$SubAccountModelImplCopyWithImpl(
      _$SubAccountModelImpl _value, $Res Function(_$SubAccountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subAccountName = null,
    Object? subAccountId = null,
    Object? accountId = null,
    Object? dateCreated = null,
    Object? dateModified = freezed,
  }) {
    return _then(_$SubAccountModelImpl(
      subAccountName: null == subAccountName
          ? _value.subAccountName
          : subAccountName // ignore: cast_nullable_to_non_nullable
              as String,
      subAccountId: null == subAccountId
          ? _value.subAccountId
          : subAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$SubAccountModelImpl implements _SubAccountModel {
  const _$SubAccountModelImpl(
      {required this.subAccountName,
      required this.subAccountId,
      required this.accountId,
      required this.dateCreated,
      this.dateModified});

  @override
  final String subAccountName;
  @override
  final String subAccountId;
  @override
  final String accountId;
  @override
  final DateTime dateCreated;
  @override
  final DateTime? dateModified;

  @override
  String toString() {
    return 'SubAccountModel(subAccountName: $subAccountName, subAccountId: $subAccountId, accountId: $accountId, dateCreated: $dateCreated, dateModified: $dateModified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubAccountModelImpl &&
            (identical(other.subAccountName, subAccountName) ||
                other.subAccountName == subAccountName) &&
            (identical(other.subAccountId, subAccountId) ||
                other.subAccountId == subAccountId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subAccountName, subAccountId,
      accountId, dateCreated, dateModified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubAccountModelImplCopyWith<_$SubAccountModelImpl> get copyWith =>
      __$$SubAccountModelImplCopyWithImpl<_$SubAccountModelImpl>(
          this, _$identity);
}

abstract class _SubAccountModel implements SubAccountModel {
  const factory _SubAccountModel(
      {required final String subAccountName,
      required final String subAccountId,
      required final String accountId,
      required final DateTime dateCreated,
      final DateTime? dateModified}) = _$SubAccountModelImpl;

  @override
  String get subAccountName;
  @override
  String get subAccountId;
  @override
  String get accountId;
  @override
  DateTime get dateCreated;
  @override
  DateTime? get dateModified;
  @override
  @JsonKey(ignore: true)
  _$$SubAccountModelImplCopyWith<_$SubAccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
