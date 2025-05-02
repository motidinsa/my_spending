import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';

abstract class EditSubcategoryRepository {
  void editSubcategory(SubcategoryModel subcategoryModel);

  String getCategoryName(String categoryId);
}
