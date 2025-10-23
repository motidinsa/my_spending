import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/core/route/routes.dart';
import 'package:my_spending/edit_category/model/edit_category_state_model.dart';
import 'package:my_spending/edit_category/repository/isar_edit_category_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_category_state.g.dart';

@riverpod
class EditCategoryState extends _$EditCategoryState {
  String categoryName = '';
  String? type;
  final formKey = GlobalKey<FormState>();

  @override
  EditCategoryStateModel build() {
    return EditCategoryStateModel(hasCategoryNameFocus: true);
  }

  void updateCategoryType(String categoryType) {
    type = categoryType;
    // state = state.copyWith(hasCategoryNameFocus: categoryName.isEmpty);
  }

  void updateCategoryName(String name) {
    categoryName = name;
  }

  void updateSaveButtonPressedStatus() {
    state = state.copyWith(isSaveButtonPressed: true);
  }

  Future<void> editCategory(CategoryModel categoryModel) async {
    try {
      state = state.copyWith(isLoading: true);
      IsarEditCategoryRepository isarEditCategoryRepository =
          IsarEditCategoryRepository();
      DateTime now = DateTime.now();

      categoryModel.categoryName = categoryName;
      categoryModel.categoryType = type!;
      categoryModel.dateModified = now;
      
      await isarEditCategoryRepository.editCategory(categoryModel);
      navigatorKey.currentContext?.pop();
      // ref.read(categoriesStateProvider.notifier).updateCategories();
    } on Exception catch (e) {
      print(e);
    } finally {
      state = state.copyWith(isLoading: null);
    }
  }

  void addCategoryNameFocus() {
    state = state.copyWith(hasCategoryNameFocus: categoryName.isEmpty);
  }
}
