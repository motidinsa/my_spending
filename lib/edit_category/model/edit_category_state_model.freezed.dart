// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_category_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditCategoryStateModel {
  bool? get isSaveButtonPressed => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get hasCategoryNameFocus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditCategoryStateModelCopyWith<EditCategoryStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCategoryStateModelCopyWith<$Res> {
  factory $EditCategoryStateModelCopyWith(EditCategoryStateModel value,
          $Res Function(EditCategoryStateModel) then) =
      _$EditCategoryStateModelCopyWithImpl<$Res, EditCategoryStateModel>;
  @useResult
  $Res call(
      {bool? isSaveButtonPressed, bool? isLoading, bool? hasCategoryNameFocus});
}

/// @nodoc
class _$EditCategoryStateModelCopyWithImpl<$Res,
        $Val extends EditCategoryStateModel>
    implements $EditCategoryStateModelCopyWith<$Res> {
  _$EditCategoryStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaveButtonPressed = freezed,
    Object? isLoading = freezed,
    Object? hasCategoryNameFocus = freezed,
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
      hasCategoryNameFocus: freezed == hasCategoryNameFocus
          ? _value.hasCategoryNameFocus
          : hasCategoryNameFocus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditCategoryStateModelImplCopyWith<$Res>
    implements $EditCategoryStateModelCopyWith<$Res> {
  factory _$$EditCategoryStateModelImplCopyWith(
          _$EditCategoryStateModelImpl value,
          $Res Function(_$EditCategoryStateModelImpl) then) =
      __$$EditCategoryStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isSaveButtonPressed, bool? isLoading, bool? hasCategoryNameFocus});
}

/// @nodoc
class __$$EditCategoryStateModelImplCopyWithImpl<$Res>
    extends _$EditCategoryStateModelCopyWithImpl<$Res,
        _$EditCategoryStateModelImpl>
    implements _$$EditCategoryStateModelImplCopyWith<$Res> {
  __$$EditCategoryStateModelImplCopyWithImpl(
      _$EditCategoryStateModelImpl _value,
      $Res Function(_$EditCategoryStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaveButtonPressed = freezed,
    Object? isLoading = freezed,
    Object? hasCategoryNameFocus = freezed,
  }) {
    return _then(_$EditCategoryStateModelImpl(
      isSaveButtonPressed: freezed == isSaveButtonPressed
          ? _value.isSaveButtonPressed
          : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasCategoryNameFocus: freezed == hasCategoryNameFocus
          ? _value.hasCategoryNameFocus
          : hasCategoryNameFocus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$EditCategoryStateModelImpl implements _EditCategoryStateModel {
  const _$EditCategoryStateModelImpl(
      {this.isSaveButtonPressed, this.isLoading, this.hasCategoryNameFocus});

  @override
  final bool? isSaveButtonPressed;
  @override
  final bool? isLoading;
  @override
  final bool? hasCategoryNameFocus;

  @override
  String toString() {
    return 'EditCategoryStateModel(isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasCategoryNameFocus: $hasCategoryNameFocus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCategoryStateModelImpl &&
            (identical(other.isSaveButtonPressed, isSaveButtonPressed) ||
                other.isSaveButtonPressed == isSaveButtonPressed) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasCategoryNameFocus, hasCategoryNameFocus) ||
                other.hasCategoryNameFocus == hasCategoryNameFocus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isSaveButtonPressed, isLoading, hasCategoryNameFocus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCategoryStateModelImplCopyWith<_$EditCategoryStateModelImpl>
      get copyWith => __$$EditCategoryStateModelImplCopyWithImpl<
          _$EditCategoryStateModelImpl>(this, _$identity);
}

abstract class _EditCategoryStateModel implements EditCategoryStateModel {
  const factory _EditCategoryStateModel(
      {final bool? isSaveButtonPressed,
      final bool? isLoading,
      final bool? hasCategoryNameFocus}) = _$EditCategoryStateModelImpl;

  @override
  bool? get isSaveButtonPressed;
  @override
  bool? get isLoading;
  @override
  bool? get hasCategoryNameFocus;
  @override
  @JsonKey(ignore: true)
  _$$EditCategoryStateModelImplCopyWith<_$EditCategoryStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
