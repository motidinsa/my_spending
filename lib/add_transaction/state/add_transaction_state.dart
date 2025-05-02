import 'package:go_router/go_router.dart';
import 'package:my_spending/add_transaction/model/add_transaction_state_model.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/transaction_model/transaction_model.dart';
import 'package:my_spending/core/route/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_transaction_state.g.dart';

@riverpod
class AddTransactionState extends _$AddTransactionState {
  @override
  AddTransactionStateModel build() {
    DateTime now = DateTime.now();
    return AddTransactionStateModel(
      transactionModel: TransactionModel(
        categoryName: '',
        accountName: '',
        accountId: '',
        categoryId: '',
        amount: 0,
        date: now,
        dateCreated: now,
      ),
      amount: '',
      transactionType: LocaleKeys.expense,
    );
  }

  String? parentName;

  void updateIndex(int index) {
    state = state.copyWith.transactionModel(date: DateTime(2027));
  }

  void updateDate(DateTime time) {
    state = state.copyWith.transactionModel(date: time);
  }

  void onAddAmountIconPressed() {
    state = state.copyWith(isAmountAddButtonPressed: true);
  }

  void onRemoveAmountIconPressed() {
    state = state.copyWith(isAmountAddButtonPressed: null);
  }

  void updateTransactionState(String type) {
    state = state.copyWith(transactionType: type);
  }

  void changeModalHeight(double height) {
    state = state.copyWith(modalHeight: height);
  }

  void updateSubcategoryHeight(double givenHeight, double totalHeight) {
    if (givenHeight > totalHeight / 2) {
      state = state.copyWith(modalHeight: totalHeight / 2);
    }
  }

  void setSelectedType(String source) {
    state = state.copyWith(redirectFrom: source);
  }

  void resetSelectedId() {
    state = state.copyWith(selectedId: null);
    parentName = null;
  }

  void onSingleModalItemPressed({
    required String name,
    required String type,
    required String id,
    required bool hasSubItem,
  }) {
    String redirectFrom = state.redirectFrom!;
    if (hasSubItem) {
      state = state.copyWith(selectedId: id);
      parentName = name;
    } else {
      if (redirectFrom == LocaleKeys.category) {
        state = state.copyWith(
          transactionModel: state.transactionModel.copyWith(
            categoryName: parentName != null ? '$parentName / $name' : name,
            categoryId: id,
          ),
        );
      } else if (redirectFrom == LocaleKeys.account) {
        state = state.copyWith(
          transactionModel: state.transactionModel.copyWith(
            accountName: parentName != null ? '$parentName / $name' : name,
            accountId: id,
          ),
        );
      }
      navigatorKey.currentContext?.pop();
    }
  }

  void onAmountChanged(String amount) {
    state = state.copyWith(amount: amount);
  }
}
