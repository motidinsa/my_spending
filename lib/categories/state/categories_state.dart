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
  Stream<List<CategoryModel>> build()  {
    return isarCategoriesRepository.getAllCategories();

  }

  // Future<void> updateCategoryList(String selectedType) async {
  //   if (state.value != null) {
  //     if (selectedType == LocaleKeys.expense) {
  //       state = AsyncData(
  //         state.value!.copyWith(
  //           categoryList: await isarCategoriesRepository.getExpenseCategories(),
  //           selectedCategoryType: LocaleKeys.expense,
  //         ),
  //       );
  //     } else if (selectedType == LocaleKeys.income) {
  //       state = AsyncData(
  //         state.value!.copyWith(
  //           categoryList: await isarCategoriesRepository.getIncomeCategories(),
  //           selectedCategoryType: LocaleKeys.income,
  //         ),
  //       );
  //     }
  //     ref.read(categoriesOtherStateProvider.notifier).updateStatus(true);
  //   }
  // }
  //
  // Future<void> updateCategories() async {
  //   try {
  //     if (state.value != null) {
  //       state = AsyncData(
  //         state.value!.copyWith(
  //           categoryList: await isarCategoriesRepository.getAllCategories(),
  //         ),
  //       );
  //     }
  //   } on Exception {
  //     // state = AsyncData(state.value!);
  //   }
  // }

  // void changeCategoryType(String categoryType) {
  //   state = AsyncData(
  //     state.value!.copyWith(selectedCategoryType: categoryType),
  //   );
  // }

  Future<void> reorderCategories({
    required int oldIndex,
    required int newIndex,
    required String categoryType,
    required List<CategoryModel> categoryList,
  }) async {
    final  item = categoryList.removeAt(oldIndex);
    categoryList.insert(newIndex, item);
    List<CategoryModel> categoryModels = [];
    for (int i = 0; i < categoryList.length; i++) {
      final CategoryModel categoryModel =
          isarCategoriesRepository.getCategoryModel(
            categoryList[i].categoryId,
          )!;
      if (categoryType == LocaleKeys.expense) {
        categoryModels.add(categoryModel.copyWith(expenseSortIndex: i));
      } else {
        categoryModels.add(categoryModel.copyWith(incomeSortIndex: i));
      }
    }
    await isarCategoriesRepository.updateCategoryModelSortIndex(categoryModels);
    // state = AsyncData(
    //   state.value!.copyWith(
    //     categoryList: await isarCategoriesRepository.getAllCategories(),
    //   ),
    // );
  }
}
