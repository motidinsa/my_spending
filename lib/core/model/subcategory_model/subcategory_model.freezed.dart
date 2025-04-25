// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcategory_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubcategoryModel {
  int get id => throw _privateConstructorUsedError;
  String get subcategoryName => throw _privateConstructorUsedError;
  String get subcategoryId => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  DateTime? get dateModified => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubcategoryModelCopyWith<SubcategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryModelCopyWith<$Res> {
  factory $SubcategoryModelCopyWith(
          SubcategoryModel value, $Res Function(SubcategoryModel) then) =
      _$SubcategoryModelCopyWithImpl<$Res, SubcategoryModel>;
  @useResult
  $Res call(
      {int id,
      String subcategoryName,
      String subcategoryId,
      String categoryId,
      DateTime dateCreated,
      DateTime? dateModified});
}

/// @nodoc
class _$SubcategoryModelCopyWithImpl<$Res, $Val extends SubcategoryModel>
    implements $SubcategoryModelCopyWith<$Res> {
  _$SubcategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subcategoryName = null,
    Object? subcategoryId = null,
    Object? categoryId = null,
    Object? dateCreated = null,
    Object? dateModified = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subcategoryName: null == subcategoryName
          ? _value.subcategoryName
          : subcategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      subcategoryId: null == subcategoryId
          ? _value.subcategoryId
          : subcategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubcategoryModelImplCopyWith<$Res>
    implements $SubcategoryModelCopyWith<$Res> {
  factory _$$SubcategoryModelImplCopyWith(_$SubcategoryModelImpl value,
          $Res Function(_$SubcategoryModelImpl) then) =
      __$$SubcategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String subcategoryName,
      String subcategoryId,
      String categoryId,
      DateTime dateCreated,
      DateTime? dateModified});
}

/// @nodoc
class __$$SubcategoryModelImplCopyWithImpl<$Res>
    extends _$SubcategoryModelCopyWithImpl<$Res, _$SubcategoryModelImpl>
    implements _$$SubcategoryModelImplCopyWith<$Res> {
  __$$SubcategoryModelImplCopyWithImpl(_$SubcategoryModelImpl _value,
      $Res Function(_$SubcategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subcategoryName = null,
    Object? subcategoryId = null,
    Object? categoryId = null,
    Object? dateCreated = null,
    Object? dateModified = freezed,
  }) {
    return _then(_$SubcategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subcategoryName: null == subcategoryName
          ? _value.subcategoryName
          : subcategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      subcategoryId: null == subcategoryId
          ? _value.subcategoryId
          : subcategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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

class _$SubcategoryModelImpl extends _SubcategoryModel {
  const _$SubcategoryModelImpl(
      {this.id = Isar.autoIncrement,
      required this.subcategoryName,
      required this.subcategoryId,
      required this.categoryId,
      required this.dateCreated,
      this.dateModified})
      : super._();

  @override
  @JsonKey()
  final int id;
  @override
  final String subcategoryName;
  @override
  final String subcategoryId;
  @override
  final String categoryId;
  @override
  final DateTime dateCreated;
  @override
  final DateTime? dateModified;

  @override
  String toString() {
    return 'SubcategoryModel(id: $id, subcategoryName: $subcategoryName, subcategoryId: $subcategoryId, categoryId: $categoryId, dateCreated: $dateCreated, dateModified: $dateModified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subcategoryName, subcategoryName) ||
                other.subcategoryName == subcategoryName) &&
            (identical(other.subcategoryId, subcategoryId) ||
                other.subcategoryId == subcategoryId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, subcategoryName,
      subcategoryId, categoryId, dateCreated, dateModified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcategoryModelImplCopyWith<_$SubcategoryModelImpl> get copyWith =>
      __$$SubcategoryModelImplCopyWithImpl<_$SubcategoryModelImpl>(
          this, _$identity);
}

abstract class _SubcategoryModel extends SubcategoryModel {
  const factory _SubcategoryModel(
      {final int id,
      required final String subcategoryName,
      required final String subcategoryId,
      required final String categoryId,
      required final DateTime dateCreated,
      final DateTime? dateModified}) = _$SubcategoryModelImpl;
  const _SubcategoryModel._() : super._();

  @override
  int get id;
  @override
  String get subcategoryName;
  @override
  String get subcategoryId;
  @override
  String get categoryId;
  @override
  DateTime get dateCreated;
  @override
  DateTime? get dateModified;
  @override
  @JsonKey(ignore: true)
  _$$SubcategoryModelImplCopyWith<_$SubcategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
