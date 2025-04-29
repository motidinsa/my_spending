// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_subcategory_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditSubcategoryStateModel {
  bool? get isSaveButtonPressed => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get hasSubcategoryNameFocus => throw _privateConstructorUsedError;
  String? get newCategoryName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditSubcategoryStateModelCopyWith<EditSubcategoryStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSubcategoryStateModelCopyWith<$Res> {
  factory $EditSubcategoryStateModelCopyWith(EditSubcategoryStateModel value,
          $Res Function(EditSubcategoryStateModel) then) =
      _$EditSubcategoryStateModelCopyWithImpl<$Res, EditSubcategoryStateModel>;
  @useResult
  $Res call(
      {bool? isSaveButtonPressed,
      bool? isLoading,
      bool? hasSubcategoryNameFocus,
      String? newCategoryName});
}

/// @nodoc
class _$EditSubcategoryStateModelCopyWithImpl<$Res,
        $Val extends EditSubcategoryStateModel>
    implements $EditSubcategoryStateModelCopyWith<$Res> {
  _$EditSubcategoryStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaveButtonPressed = freezed,
    Object? isLoading = freezed,
    Object? hasSubcategoryNameFocus = freezed,
    Object? newCategoryName = freezed,
  }) {
    return _then(_value.copyWith(
      isSaveButtonPressed: freezed == isSaveButtonPressed
          ? _value.isSaveButtonPressed
          : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSubcategoryNameFocus: freezed == hasSubcategoryNameFocus
          ? _value.hasSubcategoryNameFocus
          : hasSubcategoryNameFocus // ignore: cast_nullable_to_non_nullable
              as bool?,
      newCategoryName: freezed == newCategoryName
          ? _value.newCategoryName
          : newCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditSubcategoryStateModelImplCopyWith<$Res>
    implements $EditSubcategoryStateModelCopyWith<$Res> {
  factory _$$EditSubcategoryStateModelImplCopyWith(
          _$EditSubcategoryStateModelImpl value,
          $Res Function(_$EditSubcategoryStateModelImpl) then) =
      __$$EditSubcategoryStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isSaveButtonPressed,
      bool? isLoading,
      bool? hasSubcategoryNameFocus,
      String? newCategoryName});
}

/// @nodoc
class __$$EditSubcategoryStateModelImplCopyWithImpl<$Res>
    extends _$EditSubcategoryStateModelCopyWithImpl<$Res,
        _$EditSubcategoryStateModelImpl>
    implements _$$EditSubcategoryStateModelImplCopyWith<$Res> {
  __$$EditSubcategoryStateModelImplCopyWithImpl(
      _$EditSubcategoryStateModelImpl _value,
      $Res Function(_$EditSubcategoryStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaveButtonPressed = freezed,
    Object? isLoading = freezed,
    Object? hasSubcategoryNameFocus = freezed,
    Object? newCategoryName = freezed,
  }) {
    return _then(_$EditSubcategoryStateModelImpl(
      isSaveButtonPressed: freezed == isSaveButtonPressed
          ? _value.isSaveButtonPressed
          : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSubcategoryNameFocus: freezed == hasSubcategoryNameFocus
          ? _value.hasSubcategoryNameFocus
          : hasSubcategoryNameFocus // ignore: cast_nullable_to_non_nullable
              as bool?,
      newCategoryName: freezed == newCategoryName
          ? _value.newCategoryName
          : newCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditSubcategoryStateModelImpl implements _EditSubcategoryStateModel {
  const _$EditSubcategoryStateModelImpl(
      {this.isSaveButtonPressed,
      this.isLoading,
      this.hasSubcategoryNameFocus,
      this.newCategoryName});

  @override
  final bool? isSaveButtonPressed;
  @override
  final bool? isLoading;
  @override
  final bool? hasSubcategoryNameFocus;
  @override
  final String? newCategoryName;

  @override
  String toString() {
    return 'EditSubcategoryStateModel(isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasSubcategoryNameFocus: $hasSubcategoryNameFocus, newCategoryName: $newCategoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSubcategoryStateModelImpl &&
            (identical(other.isSaveButtonPressed, isSaveButtonPressed) ||
                other.isSaveButtonPressed == isSaveButtonPressed) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(
                    other.hasSubcategoryNameFocus, hasSubcategoryNameFocus) ||
                other.hasSubcategoryNameFocus == hasSubcategoryNameFocus) &&
            (identical(other.newCategoryName, newCategoryName) ||
                other.newCategoryName == newCategoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSaveButtonPressed, isLoading,
      hasSubcategoryNameFocus, newCategoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSubcategoryStateModelImplCopyWith<_$EditSubcategoryStateModelImpl>
      get copyWith => __$$EditSubcategoryStateModelImplCopyWithImpl<
          _$EditSubcategoryStateModelImpl>(this, _$identity);
}

abstract class _EditSubcategoryStateModel implements EditSubcategoryStateModel {
  const factory _EditSubcategoryStateModel(
      {final bool? isSaveButtonPressed,
      final bool? isLoading,
      final bool? hasSubcategoryNameFocus,
      final String? newCategoryName}) = _$EditSubcategoryStateModelImpl;

  @override
  bool? get isSaveButtonPressed;
  @override
  bool? get isLoading;
  @override
  bool? get hasSubcategoryNameFocus;
  @override
  String? get newCategoryName;
  @override
  @JsonKey(ignore: true)
  _$$EditSubcategoryStateModelImplCopyWith<_$EditSubcategoryStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
