import 'package:isar_community/isar.dart';
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
        .watch(fireImmediately: true)
        .map((list) {
          list.sort((a, b) {
            final indexA = a.sortIndex;
            final indexB = b.sortIndex;
            if (indexA == null && indexB == null) {
              return 0;
            } else if (indexA == null) {
              return 1;
            } else if (indexB == null) {
              return -1;
            } else {
              return indexA.compareTo(indexB);
            }
          });
          return list;
        });
  }

  @override
  Future<void> updateSubcategoryModelSortIndex(
    List<SubcategoryModel> subcategoryModels,
  ) async {
    await _isar.writeTxn(() async {
      await _isar.subcategoryModels.putAll(subcategoryModels);
    });
  }
}
