import 'package:my_spending/categories/model/categories_state_model.dart';
import 'package:my_spending/categories/repository/isar_categories_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_state.g.dart';

@riverpod
class CategoriesState extends _$CategoriesState {
  IsarCategoriesRepository isarCategoriesRepository =
      IsarCategoriesRepository();

  @override
  Future<CategoriesStateModel> build() async {
    return CategoriesStateModel(
      expenseCategories:
          await isarCategoriesRepository.getAllExpenseCategories(),
      incomeCategories: await isarCategoriesRepository.getAllIncomeCategories(),
    );
  }
}
