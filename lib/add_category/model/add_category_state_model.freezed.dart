// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_category_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddCategoryStateModel {
  String get categoryName => throw _privateConstructorUsedError;
  String? get categoryType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCategoryStateModelCopyWith<AddCategoryStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCategoryStateModelCopyWith<$Res> {
  factory $AddCategoryStateModelCopyWith(AddCategoryStateModel value,
          $Res Function(AddCategoryStateModel) then) =
      _$AddCategoryStateModelCopyWithImpl<$Res, AddCategoryStateModel>;
  @useResult
  $Res call({String categoryName, String? categoryType});
}

/// @nodoc
class _$AddCategoryStateModelCopyWithImpl<$Res,
        $Val extends AddCategoryStateModel>
    implements $AddCategoryStateModelCopyWith<$Res> {
  _$AddCategoryStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? categoryType = freezed,
  }) {
    return _then(_value.copyWith(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCategoryStateModelImplCopyWith<$Res>
    implements $AddCategoryStateModelCopyWith<$Res> {
  factory _$$AddCategoryStateModelImplCopyWith(
          _$AddCategoryStateModelImpl value,
          $Res Function(_$AddCategoryStateModelImpl) then) =
      __$$AddCategoryStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryName, String? categoryType});
}

/// @nodoc
class __$$AddCategoryStateModelImplCopyWithImpl<$Res>
    extends _$AddCategoryStateModelCopyWithImpl<$Res,
        _$AddCategoryStateModelImpl>
    implements _$$AddCategoryStateModelImplCopyWith<$Res> {
  __$$AddCategoryStateModelImplCopyWithImpl(_$AddCategoryStateModelImpl _value,
      $Res Function(_$AddCategoryStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? categoryType = freezed,
  }) {
    return _then(_$AddCategoryStateModelImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddCategoryStateModelImpl implements _AddCategoryStateModel {
  const _$AddCategoryStateModelImpl(
      {required this.categoryName, this.categoryType});

  @override
  final String categoryName;
  @override
  final String? categoryType;

  @override
  String toString() {
    return 'AddCategoryStateModel(categoryName: $categoryName, categoryType: $categoryType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryStateModelImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName, categoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryStateModelImplCopyWith<_$AddCategoryStateModelImpl>
      get copyWith => __$$AddCategoryStateModelImplCopyWithImpl<
          _$AddCategoryStateModelImpl>(this, _$identity);
}

abstract class _AddCategoryStateModel implements AddCategoryStateModel {
  const factory _AddCategoryStateModel(
      {required final String categoryName,
      final String? categoryType}) = _$AddCategoryStateModelImpl;

  @override
  String get categoryName;
  @override
  String? get categoryType;
  @override
  @JsonKey(ignore: true)
  _$$AddCategoryStateModelImplCopyWith<_$AddCategoryStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
