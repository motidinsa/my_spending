// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_account_group_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddAccountGroupStateModel {
  String get groupName => throw _privateConstructorUsedError;
  bool? get isSaveButtonPressed => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get hasGroupNameFocus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAccountGroupStateModelCopyWith<AddAccountGroupStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAccountGroupStateModelCopyWith<$Res> {
  factory $AddAccountGroupStateModelCopyWith(AddAccountGroupStateModel value,
          $Res Function(AddAccountGroupStateModel) then) =
      _$AddAccountGroupStateModelCopyWithImpl<$Res, AddAccountGroupStateModel>;
  @useResult
  $Res call(
      {String groupName,
      bool? isSaveButtonPressed,
      bool? isLoading,
      bool? hasGroupNameFocus});
}

/// @nodoc
class _$AddAccountGroupStateModelCopyWithImpl<$Res,
        $Val extends AddAccountGroupStateModel>
    implements $AddAccountGroupStateModelCopyWith<$Res> {
  _$AddAccountGroupStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? isSaveButtonPressed = freezed,
    Object? isLoading = freezed,
    Object? hasGroupNameFocus = freezed,
  }) {
    return _then(_value.copyWith(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      isSaveButtonPressed: freezed == isSaveButtonPressed
          ? _value.isSaveButtonPressed
          : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasGroupNameFocus: freezed == hasGroupNameFocus
          ? _value.hasGroupNameFocus
          : hasGroupNameFocus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAccountGroupStateModelImplCopyWith<$Res>
    implements $AddAccountGroupStateModelCopyWith<$Res> {
  factory _$$AddAccountGroupStateModelImplCopyWith(
          _$AddAccountGroupStateModelImpl value,
          $Res Function(_$AddAccountGroupStateModelImpl) then) =
      __$$AddAccountGroupStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String groupName,
      bool? isSaveButtonPressed,
      bool? isLoading,
      bool? hasGroupNameFocus});
}

/// @nodoc
class __$$AddAccountGroupStateModelImplCopyWithImpl<$Res>
    extends _$AddAccountGroupStateModelCopyWithImpl<$Res,
        _$AddAccountGroupStateModelImpl>
    implements _$$AddAccountGroupStateModelImplCopyWith<$Res> {
  __$$AddAccountGroupStateModelImplCopyWithImpl(
      _$AddAccountGroupStateModelImpl _value,
      $Res Function(_$AddAccountGroupStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? isSaveButtonPressed = freezed,
    Object? isLoading = freezed,
    Object? hasGroupNameFocus = freezed,
  }) {
    return _then(_$AddAccountGroupStateModelImpl(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      isSaveButtonPressed: freezed == isSaveButtonPressed
          ? _value.isSaveButtonPressed
          : isSaveButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasGroupNameFocus: freezed == hasGroupNameFocus
          ? _value.hasGroupNameFocus
          : hasGroupNameFocus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AddAccountGroupStateModelImpl implements _AddAccountGroupStateModel {
  const _$AddAccountGroupStateModelImpl(
      {required this.groupName,
      this.isSaveButtonPressed,
      this.isLoading,
      this.hasGroupNameFocus});

  @override
  final String groupName;
  @override
  final bool? isSaveButtonPressed;
  @override
  final bool? isLoading;
  @override
  final bool? hasGroupNameFocus;

  @override
  String toString() {
    return 'AddAccountGroupStateModel(groupName: $groupName, isSaveButtonPressed: $isSaveButtonPressed, isLoading: $isLoading, hasGroupNameFocus: $hasGroupNameFocus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAccountGroupStateModelImpl &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.isSaveButtonPressed, isSaveButtonPressed) ||
                other.isSaveButtonPressed == isSaveButtonPressed) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasGroupNameFocus, hasGroupNameFocus) ||
                other.hasGroupNameFocus == hasGroupNameFocus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupName, isSaveButtonPressed,
      isLoading, hasGroupNameFocus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAccountGroupStateModelImplCopyWith<_$AddAccountGroupStateModelImpl>
      get copyWith => __$$AddAccountGroupStateModelImplCopyWithImpl<
          _$AddAccountGroupStateModelImpl>(this, _$identity);
}

abstract class _AddAccountGroupStateModel implements AddAccountGroupStateModel {
  const factory _AddAccountGroupStateModel(
      {required final String groupName,
      final bool? isSaveButtonPressed,
      final bool? isLoading,
      final bool? hasGroupNameFocus}) = _$AddAccountGroupStateModelImpl;

  @override
  String get groupName;
  @override
  bool? get isSaveButtonPressed;
  @override
  bool? get isLoading;
  @override
  bool? get hasGroupNameFocus;
  @override
  @JsonKey(ignore: true)
  _$$AddAccountGroupStateModelImplCopyWith<_$AddAccountGroupStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
