import 'package:isar/isar.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/subcategories/repository/subcategories_repository.dart';

class IsarSubcategoriesRepository implements SubcategoriesRepository {
  final Isar _isar = locator();

  @override
  Stream<List<SubcategoryModel>> getAllSubcategories(String categoryId) {
    return _isar.subcategoryModels
        .filter()
        .categoryIdEqualTo(categoryId)
        .watch(fireImmediately: true);
  }
}
