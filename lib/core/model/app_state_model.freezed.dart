// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppStateModel {
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateModelCopyWith<AppStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateModelCopyWith<$Res> {
  factory $AppStateModelCopyWith(
          AppStateModel value, $Res Function(AppStateModel) then) =
      _$AppStateModelCopyWithImpl<$Res, AppStateModel>;
  @useResult
  $Res call({GlobalKey<FormState> formKey});
}

/// @nodoc
class _$AppStateModelCopyWithImpl<$Res, $Val extends AppStateModel>
    implements $AppStateModelCopyWith<$Res> {
  _$AppStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateModelImplCopyWith<$Res>
    implements $AppStateModelCopyWith<$Res> {
  factory _$$AppStateModelImplCopyWith(
          _$AppStateModelImpl value, $Res Function(_$AppStateModelImpl) then) =
      __$$AppStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GlobalKey<FormState> formKey});
}

/// @nodoc
class __$$AppStateModelImplCopyWithImpl<$Res>
    extends _$AppStateModelCopyWithImpl<$Res, _$AppStateModelImpl>
    implements _$$AppStateModelImplCopyWith<$Res> {
  __$$AppStateModelImplCopyWithImpl(
      _$AppStateModelImpl _value, $Res Function(_$AppStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
  }) {
    return _then(_$AppStateModelImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$AppStateModelImpl implements _AppStateModel {
  const _$AppStateModelImpl({required this.formKey});

  @override
  final GlobalKey<FormState> formKey;

  @override
  String toString() {
    return 'AppStateModel(formKey: $formKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateModelImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateModelImplCopyWith<_$AppStateModelImpl> get copyWith =>
      __$$AppStateModelImplCopyWithImpl<_$AppStateModelImpl>(this, _$identity);
}

abstract class _AppStateModel implements AppStateModel {
  const factory _AppStateModel({required final GlobalKey<FormState> formKey}) =
      _$AppStateModelImpl;

  @override
  GlobalKey<FormState> get formKey;
  @override
  @JsonKey(ignore: true)
  _$$AppStateModelImplCopyWith<_$AppStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
