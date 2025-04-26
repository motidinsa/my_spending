import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/subcategories/repository/isar_subcategories_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'subcategories_state.g.dart';

@riverpod
class SubcategoriesState extends _$SubcategoriesState {
  IsarSubcategoriesRepository isarSubcategoriesRepository =
      IsarSubcategoriesRepository();

  @override
  Stream<List<SubcategoryModel>> build(String categoryId) {
    return isarSubcategoriesRepository.getAllSubcategories(categoryId);
  }

  Future<void> reorderSubcategories({
    required int oldIndex,
    required int newIndex,
    required List<SubcategoryModel> subcategoryList,
  }) async {
    final item = subcategoryList.removeAt(oldIndex);
    subcategoryList.insert(newIndex, item);
    List<SubcategoryModel> subcategoryModels = [];
    for (int i = 0; i < subcategoryList.length; i++) {
      subcategoryModels.add(subcategoryList[i].copyWith(sortIndex: i));
    }
    await isarSubcategoriesRepository.updateSubcategoryModelSortIndex(
      subcategoryModels,
    );
  }
}
