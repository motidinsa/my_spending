// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountModel {
  int get id => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  double get amountAvailable => throw _privateConstructorUsedError;
  DateTime? get dateModified => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res, AccountModel>;
  @useResult
  $Res call(
      {int id,
      String accountName,
      String accountId,
      String? groupId,
      DateTime dateCreated,
      double amountAvailable,
      DateTime? dateModified,
      String? description});
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res, $Val extends AccountModel>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountName = null,
    Object? accountId = null,
    Object? groupId = freezed,
    Object? dateCreated = null,
    Object? amountAvailable = null,
    Object? dateModified = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amountAvailable: null == amountAvailable
          ? _value.amountAvailable
          : amountAvailable // ignore: cast_nullable_to_non_nullable
              as double,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountModelImplCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$$AccountModelImplCopyWith(
          _$AccountModelImpl value, $Res Function(_$AccountModelImpl) then) =
      __$$AccountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String accountName,
      String accountId,
      String? groupId,
      DateTime dateCreated,
      double amountAvailable,
      DateTime? dateModified,
      String? description});
}

/// @nodoc
class __$$AccountModelImplCopyWithImpl<$Res>
    extends _$AccountModelCopyWithImpl<$Res, _$AccountModelImpl>
    implements _$$AccountModelImplCopyWith<$Res> {
  __$$AccountModelImplCopyWithImpl(
      _$AccountModelImpl _value, $Res Function(_$AccountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountName = null,
    Object? accountId = null,
    Object? groupId = freezed,
    Object? dateCreated = null,
    Object? amountAvailable = null,
    Object? dateModified = freezed,
    Object? description = freezed,
  }) {
    return _then(_$AccountModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amountAvailable: null == amountAvailable
          ? _value.amountAvailable
          : amountAvailable // ignore: cast_nullable_to_non_nullable
              as double,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccountModelImpl extends _AccountModel {
  const _$AccountModelImpl(
      {this.id = Isar.autoIncrement,
      required this.accountName,
      required this.accountId,
      this.groupId,
      required this.dateCreated,
      required this.amountAvailable,
      this.dateModified,
      this.description})
      : super._();

  @override
  @JsonKey()
  final int id;
  @override
  final String accountName;
  @override
  final String accountId;
  @override
  final String? groupId;
  @override
  final DateTime dateCreated;
  @override
  final double amountAvailable;
  @override
  final DateTime? dateModified;
  @override
  final String? description;

  @override
  String toString() {
    return 'AccountModel(id: $id, accountName: $accountName, accountId: $accountId, groupId: $groupId, dateCreated: $dateCreated, amountAvailable: $amountAvailable, dateModified: $dateModified, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.amountAvailable, amountAvailable) ||
                other.amountAvailable == amountAvailable) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, accountName, accountId,
      groupId, dateCreated, amountAvailable, dateModified, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      __$$AccountModelImplCopyWithImpl<_$AccountModelImpl>(this, _$identity);
}

abstract class _AccountModel extends AccountModel {
  const factory _AccountModel(
      {final int id,
      required final String accountName,
      required final String accountId,
      final String? groupId,
      required final DateTime dateCreated,
      required final double amountAvailable,
      final DateTime? dateModified,
      final String? description}) = _$AccountModelImpl;
  const _AccountModel._() : super._();

  @override
  int get id;
  @override
  String get accountName;
  @override
  String get accountId;
  @override
  String? get groupId;
  @override
  DateTime get dateCreated;
  @override
  double get amountAvailable;
  @override
  DateTime? get dateModified;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
