import 'package:my_spending/core/model/category_model/category_model.dart';

abstract class CategoriesRepository {
  Stream<List<CategoryModel>> getAllCategories();
  Future<List<CategoryModel>> getExpenseCategories();
  Future<List<CategoryModel>> getIncomeCategories();
  int getSubcategoryCount(String categoryId);
  CategoryModel? getCategoryModel(String categoryId);
  void updateCategoryModelSortIndex(List<CategoryModel> categoryModels);
}
