import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_category/state/add_category_state.dart';
import 'package:my_spending/add_subcategory/state/add_subcategory_state.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

bool isAddSubcategoryTextFieldReadOnly(String title) {
  if (title == LocaleKeys.category) {
    return true;
  }
  return false;
}

bool hasAddSubcategoryTextFieldFocus(WidgetRef ref, String title) {
  if (ref.read(addSubcategoryStateProvider).hasSubcategoryNameFocus == true) {
    return true;
  }
  return false;
}

onAddSubcategorySavePressed(WidgetRef ref,String categoryId) {
  ref
      .read(addSubcategoryStateProvider.notifier)
      .updateSaveButtonPressedStatus();
  if (ref
          .read(addSubcategoryStateProvider.notifier)
          .formKey
          .currentState
          ?.validate() ==
      true) {
    ref.read(addSubcategoryStateProvider.notifier).addSubcategory(categoryId);
  } else {
    ref.read(addSubcategoryStateProvider.notifier).addSubcategoryNameFocus();
  }
}

bool hasCategoryNameTextFieldFocus(WidgetRef ref) {
  if (ref.read(addCategoryStateProvider).hasCategoryNameFocus == true) {
    return true;
  }
  return false;
}

bool hasAddCategoryTextFieldFocus(WidgetRef ref, String title) {
  if (ref.read(addCategoryStateProvider).hasCategoryNameFocus == true) {
    return true;
  }
  return false;
}
