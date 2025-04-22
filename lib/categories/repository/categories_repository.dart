import 'package:my_spending/core/model/category_model/category_model.dart';

abstract class CategoriesRepository {
  Future<List<CategoryModel>> getAllExpenseCategories();

  Future<List<CategoryModel>> getAllIncomeCategories();
}
