import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/categories/model/categories_state_model.dart';
import 'package:my_spending/categories/repository/isar_categories_repository.dart';
import 'package:my_spending/categories/state/categories_other_state.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_state.g.dart';

@riverpod
class CategoriesState extends _$CategoriesState {
  IsarCategoriesRepository isarCategoriesRepository =
      IsarCategoriesRepository();

  @override
  Future<CategoriesStateModel> build() async {
    return CategoriesStateModel(
      categoryList: await isarCategoriesRepository.getAllCategories(),
      selectedCategoryType: LocaleKeys.expense,
    );
  }

  Future<void> updateCategoryList(String selectedType) async {
    if (state.value != null) {
      if (selectedType == LocaleKeys.expense) {
        state = AsyncData(
          state.value!.copyWith(
            categoryList: await isarCategoriesRepository.getExpenseCategories(),
            selectedCategoryType: LocaleKeys.expense,
          ),
        );
      } else if (selectedType == LocaleKeys.income) {
        state = AsyncData(
          state.value!.copyWith(
            categoryList: await isarCategoriesRepository.getIncomeCategories(),
            selectedCategoryType: LocaleKeys.income,
          ),
        );
      }
      ref.read(categoriesOtherStateProvider.notifier).updateStatus(true);
    }
  }

  Future<void> updateCategories() async {
    try {
      if (state.value != null) {
        state = AsyncData(
          state.value!.copyWith(
            categoryList:
                state.value?.selectedCategoryType == LocaleKeys.income
                    ? await isarCategoriesRepository.getIncomeCategories()
                    : await isarCategoriesRepository.getExpenseCategories(),
          ),
        );
      }
    } on Exception {
      // state = AsyncData(state.value!);
    }
  }

  void changeCategoryType(String categoryType) {
    state = AsyncData(
      state.value!.copyWith(selectedCategoryType: categoryType),
    );
  }

  Future<void> reorderCategories({
    required int oldIndex,
    required int newIndex,
    required String categoryType,
    required List<CategoryModel> categoryList,
  }) async {
    // List<CategoryModel> categoryList = List.from(categoryList);
    var a = categoryList.removeAt(oldIndex);
    categoryList.insert(newIndex, a);
    // categoryList.sort(
    //   (a, b) =>
    //       a.expenseSortIndex ?? 999999.compareTo(b.expenseSortIndex ?? 999999),
    // );
    // state = AsyncData(state.value!.copyWith(categoryList: categoryList));
    List<CategoryModel> categoryModels = [];
    if (categoryType == LocaleKeys.expense) {
      for (int i = 0; i < categoryList.length; i++) {
        final CategoryModel categoryModel =
            isarCategoriesRepository.getCategoryModel(
              categoryList[i].categoryId,
            )!;
        categoryModels.add(categoryModel.copyWith(expenseSortIndex: i));
      }
      isarCategoriesRepository.updateCategoryModelSortIndex(categoryModels);
    }
    // state = AsyncData(state.value!.copyWith(categoryList:  await isarCategoriesRepository.getAllCategories()));
  }
}
