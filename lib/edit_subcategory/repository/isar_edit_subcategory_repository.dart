import 'package:isar_community/isar.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/edit_subcategory/repository/edit_subcategory_repository.dart';

class IsarEditSubcategoryRepository implements EditSubcategoryRepository {
  final Isar _isar = locator();

  @override
  Future<void> editSubcategory(SubcategoryModel subcategoryModel) async {
    await _isar.writeTxn(() async {
      await _isar.subcategoryModels.put(subcategoryModel);
    });
  }

  @override
  String getCategoryName(String categoryId) {
    return _isar.categoryModels
        .filter()
        .categoryIdEqualTo(categoryId)
        .findFirstSync()!
        .categoryName;
  }
}
