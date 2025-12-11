import 'package:flutter/material.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';

Color getCategoryTypeBackgroundColor({
  required String initialType,
  required String selectedType,
}) {
  if (selectedType == LocaleKeys.expense) {
    return Colors.red.shade100;
  } else if (selectedType == LocaleKeys.income) {
    return Colors.green.shade100;
  }
  // if (initialType == LocaleKeys.expense && selectedType == LocaleKeys.expense) {
  //   return Colors.red.shade100;
  // } else if (initialType == LocaleKeys.income &&
  //     selectedType == LocaleKeys.income) {
  //   return Colors.green.shade100;
  // }
  return Colors.white;
}

List<SubcategoryModel> getSortedSubcategories(
  List<SubcategoryModel> subcategories,
) {
 return subcategories
      ..sort((a, b) {
        if (a.sortIndex == null && b.sortIndex == null) {
          return 0; // Both are null, keep order
        } else if (a.sortIndex == null) {
          return 1; // a goes after b
        } else if (b.sortIndex == null) {
          return -1; // b goes after a
        } else {
          return a.sortIndex!.compareTo(b.sortIndex!);
        }
      });
  }


