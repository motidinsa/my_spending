import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/categories/state/categories_state.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/edit_category/state/edit_category_state.dart';
import 'package:my_spending/edit_subcategory/repository/isar_edit_subcategory_repository.dart';
import 'package:my_spending/edit_subcategory/state/edit_subcategory_state.dart';
import 'package:my_spending/edit_subcategory/ui/alert_dialog_category_list.dart';

void onEditSubcategorySavePressed(WidgetRef ref,SubcategoryModel subcategoryModel) {
  ref.read(editSubcategoryStateProvider.notifier).updateSaveButtonPressedStatus();
  if (ref
          .read(editSubcategoryStateProvider.notifier)
          .formKey
          .currentState
          ?.validate ==
      true) {
    ref.read(editSubcategoryStateProvider.notifier).editSubcategory(subcategoryModel);
  } else {
    ref.read(editSubcategoryStateProvider.notifier).addSubcategoryNameFocus();
  }
}

bool hasEditSubcategoryNameTextFieldFocus(WidgetRef ref) {
  if (ref.read(editSubcategoryStateProvider).hasSubcategoryNameFocus == true) {
    return true;
  }
  return false;
}
bool isReadOnlyEditSubcategoryTextField(String title) {
  return title == LocaleKeys.category;
}
String getEditSubcategoryCategoryName(String categoryId){
  IsarEditSubcategoryRepository isarEditSubcategoryRepository = IsarEditSubcategoryRepository();
  return isarEditSubcategoryRepository.getCategoryName(categoryId);
}
void onEditSubcategoryTextFieldPressed({
  required BuildContext context,
  required WidgetRef ref,
  required String title,
}){
if(title == LocaleKeys.category){
  showDialog<CategoryModel>(
    context: context,
    builder: (BuildContext dialogContext) {
      return ClipRRect( borderRadius: BorderRadius.circular(20),child: AlertDialogCategoryList());
    },
  );
}
}