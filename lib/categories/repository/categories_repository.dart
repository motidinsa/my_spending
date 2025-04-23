import 'package:my_spending/core/model/category_model/category_model.dart';

abstract class CategoriesRepository {
  Future<List<CategoryModel>> getAllCategories();
  Future<List<CategoryModel>> getExpenseCategories();
  Future<List<CategoryModel>> getIncomeCategories();
  Future<int> getSubcategoryCount(String categoryId);
}
