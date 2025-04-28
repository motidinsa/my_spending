import 'package:flutter/material.dart';
import 'package:my_spending/categories/repository/isar_categories_repository.dart';
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
    return categories
        .where(
          (category) =>
              category.categoryType == LocaleKeys.expense ||
              category.categoryType == LocaleKeys.both,
        )
        .toList()
      ..sort((a, b) {
        if (a.expenseSortIndex == null && b.expenseSortIndex == null) {
          return 0; // Both are null, keep order
        } else if (a.expenseSortIndex == null) {
          return 1; // a goes after b
        } else if (b.expenseSortIndex == null) {
          return -1; // b goes after a
        } else {
          return a.expenseSortIndex!.compareTo(b.expenseSortIndex!);
        }
      });
  }
  return categories
      .where(
        (category) =>
            category.categoryType == LocaleKeys.income ||
            category.categoryType == LocaleKeys.both,
      )
      .toList()
    ..sort((a, b) {
      if (a.incomeSortIndex == null && b.incomeSortIndex == null) {
        return 0; // Both are null, keep order
      } else if (a.incomeSortIndex == null) {
        return 1; // a goes after b
      } else if (b.incomeSortIndex == null) {
        return -1; // b goes after a
      } else {
        return a.incomeSortIndex!.compareTo(b.incomeSortIndex!);
      }
    });
}

getSubcategoryCount(String categoryId) {
  IsarCategoriesRepository isarCategoriesRepository =
      IsarCategoriesRepository();
  return isarCategoriesRepository.getSubcategoryCount(categoryId);
}
