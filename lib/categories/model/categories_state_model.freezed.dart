// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesStateModel {
  String get selectedCategoryType => throw _privateConstructorUsedError;
  List<CategoryModel> get categoryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesStateModelCopyWith<CategoriesStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateModelCopyWith<$Res> {
  factory $CategoriesStateModelCopyWith(CategoriesStateModel value,
          $Res Function(CategoriesStateModel) then) =
      _$CategoriesStateModelCopyWithImpl<$Res, CategoriesStateModel>;
  @useResult
  $Res call({String selectedCategoryType, List<CategoryModel> categoryList});
}

/// @nodoc
class _$CategoriesStateModelCopyWithImpl<$Res,
        $Val extends CategoriesStateModel>
    implements $CategoriesStateModelCopyWith<$Res> {
  _$CategoriesStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategoryType = null,
    Object? categoryList = null,
  }) {
    return _then(_value.copyWith(
      selectedCategoryType: null == selectedCategoryType
          ? _value.selectedCategoryType
          : selectedCategoryType // ignore: cast_nullable_to_non_nullable
              as String,
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesStateModelImplCopyWith<$Res>
    implements $CategoriesStateModelCopyWith<$Res> {
  factory _$$CategoriesStateModelImplCopyWith(_$CategoriesStateModelImpl value,
          $Res Function(_$CategoriesStateModelImpl) then) =
      __$$CategoriesStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedCategoryType, List<CategoryModel> categoryList});
}

/// @nodoc
class __$$CategoriesStateModelImplCopyWithImpl<$Res>
    extends _$CategoriesStateModelCopyWithImpl<$Res, _$CategoriesStateModelImpl>
    implements _$$CategoriesStateModelImplCopyWith<$Res> {
  __$$CategoriesStateModelImplCopyWithImpl(_$CategoriesStateModelImpl _value,
      $Res Function(_$CategoriesStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategoryType = null,
    Object? categoryList = null,
  }) {
    return _then(_$CategoriesStateModelImpl(
      selectedCategoryType: null == selectedCategoryType
          ? _value.selectedCategoryType
          : selectedCategoryType // ignore: cast_nullable_to_non_nullable
              as String,
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$CategoriesStateModelImpl implements _CategoriesStateModel {
  const _$CategoriesStateModelImpl(
      {this.selectedCategoryType = LocaleKeys.expense,
      final List<CategoryModel> categoryList = const []})
      : _categoryList = categoryList;

  @override
  @JsonKey()
  final String selectedCategoryType;
  final List<CategoryModel> _categoryList;
  @override
  @JsonKey()
  List<CategoryModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'CategoriesStateModel(selectedCategoryType: $selectedCategoryType, categoryList: $categoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesStateModelImpl &&
            (identical(other.selectedCategoryType, selectedCategoryType) ||
                other.selectedCategoryType == selectedCategoryType) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCategoryType,
      const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesStateModelImplCopyWith<_$CategoriesStateModelImpl>
      get copyWith =>
          __$$CategoriesStateModelImplCopyWithImpl<_$CategoriesStateModelImpl>(
              this, _$identity);
}

abstract class _CategoriesStateModel implements CategoriesStateModel {
  const factory _CategoriesStateModel(
      {final String selectedCategoryType,
      final List<CategoryModel> categoryList}) = _$CategoriesStateModelImpl;

  @override
  String get selectedCategoryType;
  @override
  List<CategoryModel> get categoryList;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesStateModelImplCopyWith<_$CategoriesStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
