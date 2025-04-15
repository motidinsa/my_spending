// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountGroupModel {
  int get id => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  DateTime? get dateModified => throw _privateConstructorUsedError;
  int? get sortIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountGroupModelCopyWith<AccountGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountGroupModelCopyWith<$Res> {
  factory $AccountGroupModelCopyWith(
          AccountGroupModel value, $Res Function(AccountGroupModel) then) =
      _$AccountGroupModelCopyWithImpl<$Res, AccountGroupModel>;
  @useResult
  $Res call(
      {int id,
      String groupName,
      String? groupId,
      DateTime dateCreated,
      DateTime? dateModified,
      int? sortIndex});
}

/// @nodoc
class _$AccountGroupModelCopyWithImpl<$Res, $Val extends AccountGroupModel>
    implements $AccountGroupModelCopyWith<$Res> {
  _$AccountGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupName = null,
    Object? groupId = freezed,
    Object? dateCreated = null,
    Object? dateModified = freezed,
    Object? sortIndex = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sortIndex: freezed == sortIndex
          ? _value.sortIndex
          : sortIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountGroupModelImplCopyWith<$Res>
    implements $AccountGroupModelCopyWith<$Res> {
  factory _$$AccountGroupModelImplCopyWith(_$AccountGroupModelImpl value,
          $Res Function(_$AccountGroupModelImpl) then) =
      __$$AccountGroupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String groupName,
      String? groupId,
      DateTime dateCreated,
      DateTime? dateModified,
      int? sortIndex});
}

/// @nodoc
class __$$AccountGroupModelImplCopyWithImpl<$Res>
    extends _$AccountGroupModelCopyWithImpl<$Res, _$AccountGroupModelImpl>
    implements _$$AccountGroupModelImplCopyWith<$Res> {
  __$$AccountGroupModelImplCopyWithImpl(_$AccountGroupModelImpl _value,
      $Res Function(_$AccountGroupModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupName = null,
    Object? groupId = freezed,
    Object? dateCreated = null,
    Object? dateModified = freezed,
    Object? sortIndex = freezed,
  }) {
    return _then(_$AccountGroupModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sortIndex: freezed == sortIndex
          ? _value.sortIndex
          : sortIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AccountGroupModelImpl extends _AccountGroupModel {
  const _$AccountGroupModelImpl(
      {this.id = Isar.autoIncrement,
      required this.groupName,
      this.groupId,
      required this.dateCreated,
      this.dateModified,
      this.sortIndex})
      : super._();

  @override
  @JsonKey()
  final int id;
  @override
  final String groupName;
  @override
  final String? groupId;
  @override
  final DateTime dateCreated;
  @override
  final DateTime? dateModified;
  @override
  final int? sortIndex;

  @override
  String toString() {
    return 'AccountGroupModel(id: $id, groupName: $groupName, groupId: $groupId, dateCreated: $dateCreated, dateModified: $dateModified, sortIndex: $sortIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountGroupModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.sortIndex, sortIndex) ||
                other.sortIndex == sortIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, groupName, groupId,
      dateCreated, dateModified, sortIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountGroupModelImplCopyWith<_$AccountGroupModelImpl> get copyWith =>
      __$$AccountGroupModelImplCopyWithImpl<_$AccountGroupModelImpl>(
          this, _$identity);
}

abstract class _AccountGroupModel extends AccountGroupModel {
  const factory _AccountGroupModel(
      {final int id,
      required final String groupName,
      final String? groupId,
      required final DateTime dateCreated,
      final DateTime? dateModified,
      final int? sortIndex}) = _$AccountGroupModelImpl;
  const _AccountGroupModel._() : super._();

  @override
  int get id;
  @override
  String get groupName;
  @override
  String? get groupId;
  @override
  DateTime get dateCreated;
  @override
  DateTime? get dateModified;
  @override
  int? get sortIndex;
  @override
  @JsonKey(ignore: true)
  _$$AccountGroupModelImplCopyWith<_$AccountGroupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
