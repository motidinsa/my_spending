import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/add_category/model/add_category_state_model.dart';
import 'package:my_spending/add_category/repository/isar_add_category_repository.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/core/route/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_category_state.g.dart';

@riverpod
class AddCategoryState extends _$AddCategoryState {
  final formKey = GlobalKey<FormState>();

  @override
  AddCategoryStateModel build() {
    return AddCategoryStateModel(categoryName: '');
  }

  void updateCategoryType(String categoryType) {
    state = state.copyWith(categoryType: categoryType);
  }

  void updateCategoryName(String name) {
    state = state.copyWith(categoryName: name);
  }

  void updateSaveButtonPressedStatus() {
    state = state.copyWith(isSaveButtonPressed: true);
  }

  Future<void> addCategory() async {
    try {
      state = state.copyWith(isLoading: true);
      IsarAddCategoryRepository isarAddCategoryRepository =
          IsarAddCategoryRepository();
      DateTime now = DateTime.now();
      await isarAddCategoryRepository.addCategory(
        categoryModel: CategoryModel(
          categoryName: state.categoryName,
          categoryId: generateDatabaseId(now),
          categoryType: state.categoryType!,
          dateCreated: now,
        ),
      );
      navigatorKey.currentContext?.pop();
    } on Exception catch (e) {
      print(e);
    } finally {
      state = state.copyWith(isLoading: null);
    }
  }

  void addCategoryNameFocus() {
    state = state.copyWith(hasCategoryNameFocus: true);
  }
}
