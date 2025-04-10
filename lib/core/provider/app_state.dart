import 'package:flutter/material.dart';
import 'package:my_spending/core/model/app_state_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_state.g.dart';

@riverpod
class AppState extends _$AppState {
  final formKey = GlobalKey<FormState>();
  final String mo = 'Moti';
  @override
  AppStateModel build() => AppStateModel(selectedIndex: 0);

  void updateIndex(int index) {
    state = state.copyWith(selectedIndex: index);
  }
  // GlobalKey<FormState> getFormKey()=>_formKey;
}
