import 'package:my_spending/core/model/category_model/category_model.dart';

abstract class AddCategoryRepository {
  void addCategory({
    required CategoryModel categoryModel,
  });

}
