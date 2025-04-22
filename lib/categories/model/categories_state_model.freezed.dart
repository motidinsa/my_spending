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
  List<CategoryModel> get incomeCategories =>
      throw _privateConstructorUsedError;
  List<CategoryModel> get expenseCategories =>
      throw _privateConstructorUsedError;
  bool? get isExpenseCategoryLoading => throw _privateConstructorUsedError;
  bool? get isIncomeCategoryLoading => throw _privateConstructorUsedError;

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
  $Res call(
      {String selectedCategoryType,
      List<CategoryModel> incomeCategories,
      List<CategoryModel> expenseCategories,
      bool? isExpenseCategoryLoading,
      bool? isIncomeCategoryLoading});
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
    Object? incomeCategories = null,
    Object? expenseCategories = null,
    Object? isExpenseCategoryLoading = freezed,
    Object? isIncomeCategoryLoading = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCategoryType: null == selectedCategoryType
          ? _value.selectedCategoryType
          : selectedCategoryType // ignore: cast_nullable_to_non_nullable
              as String,
      incomeCategories: null == incomeCategories
          ? _value.incomeCategories
          : incomeCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      expenseCategories: null == expenseCategories
          ? _value.expenseCategories
          : expenseCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      isExpenseCategoryLoading: freezed == isExpenseCategoryLoading
          ? _value.isExpenseCategoryLoading
          : isExpenseCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isIncomeCategoryLoading: freezed == isIncomeCategoryLoading
          ? _value.isIncomeCategoryLoading
          : isIncomeCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call(
      {String selectedCategoryType,
      List<CategoryModel> incomeCategories,
      List<CategoryModel> expenseCategories,
      bool? isExpenseCategoryLoading,
      bool? isIncomeCategoryLoading});
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
    Object? incomeCategories = null,
    Object? expenseCategories = null,
    Object? isExpenseCategoryLoading = freezed,
    Object? isIncomeCategoryLoading = freezed,
  }) {
    return _then(_$CategoriesStateModelImpl(
      selectedCategoryType: null == selectedCategoryType
          ? _value.selectedCategoryType
          : selectedCategoryType // ignore: cast_nullable_to_non_nullable
              as String,
      incomeCategories: null == incomeCategories
          ? _value._incomeCategories
          : incomeCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      expenseCategories: null == expenseCategories
          ? _value._expenseCategories
          : expenseCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      isExpenseCategoryLoading: freezed == isExpenseCategoryLoading
          ? _value.isExpenseCategoryLoading
          : isExpenseCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isIncomeCategoryLoading: freezed == isIncomeCategoryLoading
          ? _value.isIncomeCategoryLoading
          : isIncomeCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$CategoriesStateModelImpl implements _CategoriesStateModel {
  const _$CategoriesStateModelImpl(
      {this.selectedCategoryType = LocaleKeys.expense,
      final List<CategoryModel> incomeCategories = const [],
      final List<CategoryModel> expenseCategories = const [],
      this.isExpenseCategoryLoading = true,
      this.isIncomeCategoryLoading = true})
      : _incomeCategories = incomeCategories,
        _expenseCategories = expenseCategories;

  @override
  @JsonKey()
  final String selectedCategoryType;
  final List<CategoryModel> _incomeCategories;
  @override
  @JsonKey()
  List<CategoryModel> get incomeCategories {
    if (_incomeCategories is EqualUnmodifiableListView)
      return _incomeCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomeCategories);
  }

  final List<CategoryModel> _expenseCategories;
  @override
  @JsonKey()
  List<CategoryModel> get expenseCategories {
    if (_expenseCategories is EqualUnmodifiableListView)
      return _expenseCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseCategories);
  }

  @override
  @JsonKey()
  final bool? isExpenseCategoryLoading;
  @override
  @JsonKey()
  final bool? isIncomeCategoryLoading;

  @override
  String toString() {
    return 'CategoriesStateModel(selectedCategoryType: $selectedCategoryType, incomeCategories: $incomeCategories, expenseCategories: $expenseCategories, isExpenseCategoryLoading: $isExpenseCategoryLoading, isIncomeCategoryLoading: $isIncomeCategoryLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesStateModelImpl &&
            (identical(other.selectedCategoryType, selectedCategoryType) ||
                other.selectedCategoryType == selectedCategoryType) &&
            const DeepCollectionEquality()
                .equals(other._incomeCategories, _incomeCategories) &&
            const DeepCollectionEquality()
                .equals(other._expenseCategories, _expenseCategories) &&
            (identical(
                    other.isExpenseCategoryLoading, isExpenseCategoryLoading) ||
                other.isExpenseCategoryLoading == isExpenseCategoryLoading) &&
            (identical(
                    other.isIncomeCategoryLoading, isIncomeCategoryLoading) ||
                other.isIncomeCategoryLoading == isIncomeCategoryLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedCategoryType,
      const DeepCollectionEquality().hash(_incomeCategories),
      const DeepCollectionEquality().hash(_expenseCategories),
      isExpenseCategoryLoading,
      isIncomeCategoryLoading);

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
      final List<CategoryModel> incomeCategories,
      final List<CategoryModel> expenseCategories,
      final bool? isExpenseCategoryLoading,
      final bool? isIncomeCategoryLoading}) = _$CategoriesStateModelImpl;

  @override
  String get selectedCategoryType;
  @override
  List<CategoryModel> get incomeCategories;
  @override
  List<CategoryModel> get expenseCategories;
  @override
  bool? get isExpenseCategoryLoading;
  @override
  bool? get isIncomeCategoryLoading;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesStateModelImplCopyWith<_$CategoriesStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
