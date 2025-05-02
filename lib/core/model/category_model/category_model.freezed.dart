// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryModel {
  int get id => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get categoryType => throw _privateConstructorUsedError;
  int get subcategoryCount => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  DateTime? get dateModified => throw _privateConstructorUsedError;
  int? get expenseSortIndex => throw _privateConstructorUsedError;
  int? get incomeSortIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {int id,
      String categoryName,
      String categoryId,
      String categoryType,
      int subcategoryCount,
      DateTime dateCreated,
      DateTime? dateModified,
      int? expenseSortIndex,
      int? incomeSortIndex});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? categoryId = null,
    Object? categoryType = null,
    Object? subcategoryCount = null,
    Object? dateCreated = null,
    Object? dateModified = freezed,
    Object? expenseSortIndex = freezed,
    Object? incomeSortIndex = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
      subcategoryCount: null == subcategoryCount
          ? _value.subcategoryCount
          : subcategoryCount // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expenseSortIndex: freezed == expenseSortIndex
          ? _value.expenseSortIndex
          : expenseSortIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      incomeSortIndex: freezed == incomeSortIndex
          ? _value.incomeSortIndex
          : incomeSortIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String categoryName,
      String categoryId,
      String categoryType,
      int subcategoryCount,
      DateTime dateCreated,
      DateTime? dateModified,
      int? expenseSortIndex,
      int? incomeSortIndex});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? categoryId = null,
    Object? categoryType = null,
    Object? subcategoryCount = null,
    Object? dateCreated = null,
    Object? dateModified = freezed,
    Object? expenseSortIndex = freezed,
    Object? incomeSortIndex = freezed,
  }) {
    return _then(_$CategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
      subcategoryCount: null == subcategoryCount
          ? _value.subcategoryCount
          : subcategoryCount // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expenseSortIndex: freezed == expenseSortIndex
          ? _value.expenseSortIndex
          : expenseSortIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      incomeSortIndex: freezed == incomeSortIndex
          ? _value.incomeSortIndex
          : incomeSortIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CategoryModelImpl extends _CategoryModel {
  const _$CategoryModelImpl(
      {this.id = Isar.autoIncrement,
      required this.categoryName,
      required this.categoryId,
      required this.categoryType,
      required this.subcategoryCount,
      required this.dateCreated,
      this.dateModified,
      this.expenseSortIndex,
      this.incomeSortIndex})
      : super._();

  @override
  @JsonKey()
  final int id;
  @override
  final String categoryName;
  @override
  final String categoryId;
  @override
  final String categoryType;
  @override
  final int subcategoryCount;
  @override
  final DateTime dateCreated;
  @override
  final DateTime? dateModified;
  @override
  final int? expenseSortIndex;
  @override
  final int? incomeSortIndex;

  @override
  String toString() {
    return 'CategoryModel(id: $id, categoryName: $categoryName, categoryId: $categoryId, categoryType: $categoryType, subcategoryCount: $subcategoryCount, dateCreated: $dateCreated, dateModified: $dateModified, expenseSortIndex: $expenseSortIndex, incomeSortIndex: $incomeSortIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.subcategoryCount, subcategoryCount) ||
                other.subcategoryCount == subcategoryCount) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.expenseSortIndex, expenseSortIndex) ||
                other.expenseSortIndex == expenseSortIndex) &&
            (identical(other.incomeSortIndex, incomeSortIndex) ||
                other.incomeSortIndex == incomeSortIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryName,
      categoryId,
      categoryType,
      subcategoryCount,
      dateCreated,
      dateModified,
      expenseSortIndex,
      incomeSortIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);
}

abstract class _CategoryModel extends CategoryModel {
  const factory _CategoryModel(
      {final int id,
      required final String categoryName,
      required final String categoryId,
      required final String categoryType,
      required final int subcategoryCount,
      required final DateTime dateCreated,
      final DateTime? dateModified,
      final int? expenseSortIndex,
      final int? incomeSortIndex}) = _$CategoryModelImpl;
  const _CategoryModel._() : super._();

  @override
  int get id;
  @override
  String get categoryName;
  @override
  String get categoryId;
  @override
  String get categoryType;
  @override
  int get subcategoryCount;
  @override
  DateTime get dateCreated;
  @override
  DateTime? get dateModified;
  @override
  int? get expenseSortIndex;
  @override
  int? get incomeSortIndex;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
