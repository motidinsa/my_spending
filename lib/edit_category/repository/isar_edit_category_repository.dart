import 'package:isar/isar.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/edit_category/repository/edit_category_repository.dart';

class IsarEditCategoryRepository implements EditCategoryRepository {
  final Isar _isar = locator();

  @override
  Future<void> editCategory(CategoryModel categoryModel) async {
    await _isar.writeTxn(() async {
      await _isar.categoryModels.put(categoryModel);
    });
  }
}
