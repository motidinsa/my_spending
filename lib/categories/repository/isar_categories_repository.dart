import 'package:isar/isar.dart';
import 'package:my_spending/categories/repository/categories_repository.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';

class IsarCategoriesRepository implements CategoriesRepository {
  final Isar _isar = locator();

  @override
  Future<List<CategoryModel>> getAllExpenseCategories() async {
    return await _isar.categoryModels
        .filter()
        .categoryIdEqualTo(LocaleKeys.expense)
        .or()
        .categoryIdEqualTo(LocaleKeys.both)
        .findAll();
  }

  @override
  Future<List<CategoryModel>> getAllIncomeCategories() async {
    return await _isar.categoryModels
        .filter()
        .categoryIdEqualTo(LocaleKeys.income)
        .or()
        .categoryIdEqualTo(LocaleKeys.both)
        .findAll();
  }
}
