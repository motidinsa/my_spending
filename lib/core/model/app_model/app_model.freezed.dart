// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppModel {
  int get id => throw _privateConstructorUsedError;
  bool? get isDefaultAccountGroupInitialized =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppModelCopyWith<AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppModelCopyWith<$Res> {
  factory $AppModelCopyWith(AppModel value, $Res Function(AppModel) then) =
      _$AppModelCopyWithImpl<$Res, AppModel>;
  @useResult
  $Res call({int id, bool? isDefaultAccountGroupInitialized});
}

/// @nodoc
class _$AppModelCopyWithImpl<$Res, $Val extends AppModel>
    implements $AppModelCopyWith<$Res> {
  _$AppModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isDefaultAccountGroupInitialized = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isDefaultAccountGroupInitialized: freezed ==
              isDefaultAccountGroupInitialized
          ? _value.isDefaultAccountGroupInitialized
          : isDefaultAccountGroupInitialized // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppModelImplCopyWith<$Res>
    implements $AppModelCopyWith<$Res> {
  factory _$$AppModelImplCopyWith(
          _$AppModelImpl value, $Res Function(_$AppModelImpl) then) =
      __$$AppModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, bool? isDefaultAccountGroupInitialized});
}

/// @nodoc
class __$$AppModelImplCopyWithImpl<$Res>
    extends _$AppModelCopyWithImpl<$Res, _$AppModelImpl>
    implements _$$AppModelImplCopyWith<$Res> {
  __$$AppModelImplCopyWithImpl(
      _$AppModelImpl _value, $Res Function(_$AppModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isDefaultAccountGroupInitialized = freezed,
  }) {
    return _then(_$AppModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isDefaultAccountGroupInitialized: freezed ==
              isDefaultAccountGroupInitialized
          ? _value.isDefaultAccountGroupInitialized
          : isDefaultAccountGroupInitialized // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AppModelImpl extends _AppModel {
  const _$AppModelImpl(
      {this.id = Isar.autoIncrement, this.isDefaultAccountGroupInitialized})
      : super._();

  @override
  @JsonKey()
  final int id;
  @override
  final bool? isDefaultAccountGroupInitialized;

  @override
  String toString() {
    return 'AppModel(id: $id, isDefaultAccountGroupInitialized: $isDefaultAccountGroupInitialized)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isDefaultAccountGroupInitialized,
                    isDefaultAccountGroupInitialized) ||
                other.isDefaultAccountGroupInitialized ==
                    isDefaultAccountGroupInitialized));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, isDefaultAccountGroupInitialized);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      __$$AppModelImplCopyWithImpl<_$AppModelImpl>(this, _$identity);
}

abstract class _AppModel extends AppModel {
  const factory _AppModel(
      {final int id,
      final bool? isDefaultAccountGroupInitialized}) = _$AppModelImpl;
  const _AppModel._() : super._();

  @override
  int get id;
  @override
  bool? get isDefaultAccountGroupInitialized;
  @override
  @JsonKey(ignore: true)
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
