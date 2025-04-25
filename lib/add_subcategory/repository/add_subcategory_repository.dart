import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';

abstract class AddSubcategoryRepository {
  void addSubcategory({
    required SubcategoryModel subcategoryModel,
  });

}
