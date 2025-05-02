import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/core/route/routes.dart';
import 'package:my_spending/edit_subcategory/model/edit_subcategory_state_model.dart';
import 'package:my_spending/edit_subcategory/repository/isar_edit_subcategory_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_subcategory_state.g.dart';

@riverpod
class EditSubcategoryState extends _$EditSubcategoryState {
  String subcategoryName = '';
  bool isSubcategoryNameSetInitially = false;
  String? newCategoryId;
  String? type;
  final formKey = GlobalKey<FormState>();

  @override
  EditSubcategoryStateModel build() {
    return EditSubcategoryStateModel(hasSubcategoryNameFocus: true);
  }

  void updateCategory(String categoryName, String categoryId) {
    newCategoryId = categoryId;
    state = state.copyWith(
      newCategoryName: categoryName,
      hasSubcategoryNameFocus: subcategoryName.isEmpty,
    );
    navigatorKey.currentContext?.pop();
  }

  void updateSubcategoryName(String name) {
    subcategoryName = name;
    isSubcategoryNameSetInitially = true;
  }

  void updateSaveButtonPressedStatus() {
    state = state.copyWith(isSaveButtonPressed: true);
  }

  Future<void> editSubcategory(SubcategoryModel subcategoryModel) async {
      try {
        state = state.copyWith(isLoading: true);
        IsarEditSubcategoryRepository isarEditSubcategoryRepository =
        IsarEditSubcategoryRepository();
        DateTime now = DateTime.now();

        await isarEditSubcategoryRepository.editSubcategory(
          subcategoryModel.copyWith(
            subcategoryName: subcategoryName,
            categoryId: newCategoryId ?? subcategoryModel.categoryId,
            dateModified: now,
          ),
        );
        navigatorKey.currentContext?.pop();
        // ref.read(categoriesStateProvider.notifier).updateCategories();
      } on Exception catch (e) {
        print(e);
      } finally {
        state = state.copyWith(isLoading: null);
      }
  }

  void addSubcategoryNameFocus() {
    state = state.copyWith(hasSubcategoryNameFocus: subcategoryName.isEmpty);
  }
}
