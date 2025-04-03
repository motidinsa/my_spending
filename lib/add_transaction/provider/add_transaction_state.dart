import 'package:my_spending/add_transaction/model/add_transaction_state_model.dart';
import 'package:my_spending/core/model/transaction_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_transaction_state.g.dart';

@riverpod
class AddTransactionState extends _$AddTransactionState {
  // @override
  // TransactionModel build() {
  //   return TransactionModel(
  //     categoryName: 'Not selected',
  //     accountName: 'Not selected',
  //     amount: 0,
  //     date: DateTime.now(),
  //   );
  // }
  @override
  AddTransactionModel build() {
    return AddTransactionModel(
      transactionModel: TransactionModel(
        categoryName: 'Not selected',
        accountName: 'Not selected',
        amount: 0,
        date: DateTime.now(),
      ),transactionType: 'Expense'
    );
  }

  void updateIndex(int index) {
    state = state.copyWith.transactionModel(date: DateTime(2027));
  }

  void updateDate(DateTime time) {
    state = state.copyWith.transactionModel(date: time);
  }

  void onAddAmountIconPressed() {
    state = state.copyWith(isAmountAddButtonPressed: true);
  }
  void updateTransactionState(String type) {
    state = state.copyWith(transactionType: type);
  }
}
