import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_category/state/add_category_state.dart';

void onAddCategorySavePressed(WidgetRef ref) {
  ref.read(addCategoryStateProvider.notifier).updateSaveButtonPressedStatus();
  if (ref
          .read(addCategoryStateProvider.notifier)
          .formKey
          .currentState
          ?.validate() ==
      true) {
    ref.read(addCategoryStateProvider.notifier).addCategory();
  } else {
    ref.read(addCategoryStateProvider.notifier).addCategoryNameFocus();
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
