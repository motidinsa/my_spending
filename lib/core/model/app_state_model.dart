import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state_model.freezed.dart';

@freezed
abstract class AppStateModel with _$AppStateModel {
  const factory AppStateModel({
    required GlobalKey<FormState> formKey,
  }) = _AppStateModel;
  // const factory AppModel.loaded(List<String> users) = _Loaded;
}
