import 'package:isar/isar.dart';
import 'package:my_spending/categories/repository/categories_repository.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';

class IsarCategoriesRepository implements CategoriesRepository {
  final Isar _isar = locator();

  @override
  Future<List<CategoryModel>> getAllCategories() async {
    return await _isar.categoryModels.where().findAll();
  }

  @override
  Future<int> getSubcategoryCount(String categoryId) {
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryModel>> getExpenseCategories() async {
    return await _isar.categoryModels
        .filter()
        .categoryTypeEqualTo(LocaleKeys.expense)
        .or()
        .categoryTypeEqualTo(LocaleKeys.both)
        .findAll();
  }

  @override
  Future<List<CategoryModel>> getIncomeCategories() async {
    return await _isar.categoryModels
        .filter()
        .categoryTypeEqualTo(LocaleKeys.income)
        .or()
        .categoryTypeEqualTo(LocaleKeys.both)
        .findAll();
  }

  @override
  CategoryModel? getCategoryModel(String categoryId) {
    return _isar.categoryModels
        .filter()
        .categoryIdEqualTo(categoryId)
        .findFirstSync();
  }

  @override
  Future<void> updateCategoryModelSortIndex(
    List<CategoryModel> categoryModels,
  ) async {
    await _isar.writeTxn(() async {
      await _isar.categoryModels.putAll(categoryModels);
    });
  }
}
