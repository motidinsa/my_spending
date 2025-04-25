import 'package:isar/isar.dart';
import 'package:my_spending/add_subcategory/repository/add_subcategory_repository.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';

class IsarAddSubcategoryRepository implements AddSubcategoryRepository {
  final Isar _isar = locator();

  @override
  Future<void> addSubcategory({
    required SubcategoryModel subcategoryModel,
  }) async {
    await _isar.writeTxn(() async {
      await _isar.subcategoryModels.put(subcategoryModel);
    });
  }
}
