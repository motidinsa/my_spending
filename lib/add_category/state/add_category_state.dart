import 'package:flutter/cupertino.dart';
import 'package:my_spending/add_category/model/add_category_state_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_category_state.g.dart';

@riverpod
class AddCategoryState extends _$AddCategoryState {
  @override
  AddCategoryStateModel build() {
    return AddCategoryStateModel(categoryName: '');
  }
}
