import 'package:my_spending/categories/repository/isar_categories_repository.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_state.g.dart';

@riverpod
class CategoriesState extends _$CategoriesState {
  IsarCategoriesRepository isarCategoriesRepository =
      IsarCategoriesRepository();

  @override
  Stream<List<CategoryModel>> build() {
    return isarCategoriesRepository.getAllCategories();
  }

  Future<void> reorderCategories({
    required int oldIndex,
    required int newIndex,
    required String categoryType,
    required List<CategoryModel> categoryList,
  }) async {
    final item = categoryList.removeAt(oldIndex);
    categoryList.insert(newIndex, item);
    List<CategoryModel> categoryModels = [];
    for (int i = 0; i < categoryList.length; i++) {
      final CategoryModel categoryModel =
          isarCategoriesRepository.getCategoryModel(
            categoryList[i].categoryId,
          )!;
      if (categoryType == LocaleKeys.expense) {
        categoryModel.expenseSortIndex = i;
        categoryModels.add(categoryModel);
      } else {
        categoryModel.incomeSortIndex = i;
        categoryModels.add(categoryModel);
      }
    }
    await isarCategoriesRepository.updateCategoryModelSortIndex(categoryModels);
  }
}
