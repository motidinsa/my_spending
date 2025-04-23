import 'package:my_spending/categories/model/categories_state_model.dart';
import 'package:my_spending/categories/repository/isar_categories_repository.dart';
import 'package:my_spending/categories/state/categories_other_state.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
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
}
