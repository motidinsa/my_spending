import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/repository/isar_add_transaction_repository.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_transaction_category_list_state.g.dart';

@riverpod
class AddTransactionCategoryListState
    extends _$AddTransactionCategoryListState {
  IsarAddTransactionRepository isarAddTransactionRepository =
      IsarAddTransactionRepository();

  @override
  Future<List<CategoryModel>> build() async {
    final addTransactionState = ref.watch(addTransactionStateProvider);
    final selectedCategoryType = addTransactionState.transactionType;
    return selectedCategoryType == LocaleKeys.expense
        ? isarAddTransactionRepository.getExpenseCategories()
        : isarAddTransactionRepository.getIncomeCategories();
  }
}
