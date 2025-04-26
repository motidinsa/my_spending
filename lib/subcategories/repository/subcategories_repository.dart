import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';

abstract class SubcategoriesRepository {
  Stream<List<SubcategoryModel>> getAllSubcategories(String categoryId);

  void updateSubcategoryModelSortIndex(
    List<SubcategoryModel> subcategoryModels,
  );
}
