import 'package:my_spending/core/model/app_model.dart';
import 'package:my_spending/core/model/transaction_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_transaction_state.g.dart';

@riverpod
class AddTransactionState extends _$AddTransactionState {
  @override
  List<TransactionModel> build() {

    return [
      TransactionModel(
        categoryName: 'Not selected',
        accountName: 'Not selected',
        amount: 0,
        date: DateTime.now(),
      ),
    ];
  }

  void updateIndex(int index) {
     // state.add(TransactionModel(
     //   categoryName: 'Not selected',
     //   accountName: 'Not selected',
     //   amount: 0,
     //   date: DateTime.now(),
     // ));
     print(state.length);
  }
}
