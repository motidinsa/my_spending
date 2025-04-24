import 'package:flutter/material.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';

getCategoryTypeBackgroundColor({
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

List<CategoryModel> getCategoriesByType(
  String type,
  List<CategoryModel> categories,
) {
  if (type == LocaleKeys.expense) {
    var tobeReturned =
        categories
            .where(
              (category) =>
                  category.categoryType == LocaleKeys.expense ||
                  category.categoryType == LocaleKeys.both,
            )
            .toList();
    tobeReturned.sort(
      (a, b) =>
          a.expenseSortIndex ?? 999999.compareTo(b.expenseSortIndex ?? 999999),
    );
    return tobeReturned;
  }
  return categories
      .where(
        (category) =>
            category.categoryType == LocaleKeys.income ||
            category.categoryType == LocaleKeys.both,
      )
      .toList();
}
