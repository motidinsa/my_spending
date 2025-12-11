import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/edit_category/state/edit_category_state.dart';

void onEditCategorySavePressed(WidgetRef ref,CategoryModel categoryModel) {
  ref.read(editCategoryStateProvider.notifier).updateSaveButtonPressedStatus();
  if (ref
          .read(editCategoryStateProvider.notifier)
          .formKey
          .currentState
          ?.validate() ==
      true) {
    ref.read(editCategoryStateProvider.notifier).editCategory(categoryModel);
  } else {
    ref.read(editCategoryStateProvider.notifier).addCategoryNameFocus();
  }
}

bool hasEditCategoryNameTextFieldFocus(WidgetRef ref) {
  if (ref.read(editCategoryStateProvider).hasCategoryNameFocus == true) {
    return true;
  }
  return false;
}
