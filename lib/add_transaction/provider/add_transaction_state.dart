import 'package:my_spending/add_transaction/model/add_transaction_state_model.dart';
import 'package:my_spending/core/model/account_model.dart';
import 'package:my_spending/core/model/category_model.dart';
import 'package:my_spending/core/model/transaction_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_transaction_state.g.dart';

@riverpod
class AddTransactionState extends _$AddTransactionState {
  @override
  AddTransactionModel build() {
    return AddTransactionModel(
      transactionModel: TransactionModel(
        categoryName: '',
        accountName: '',
        accountId: '',
        categoryId: '',
        amount: 0,
        date: DateTime.now(),
        dateCreated: DateTime.now(),

      ),
      transactionType: 'Expense',
      categoryModels: [
        CategoryModel(
          categoryName: 'cat 1',
          categoryId: '1',
          dateCreated: DateTime.now(),
          hasSubcategory: true
        ),
        CategoryModel(
          categoryName: 'cat 1',
          categoryId: '1',
          dateCreated: DateTime.now(),
        ),
        CategoryModel(
          categoryName: 'cat 1',
          categoryId: '1',
          dateCreated: DateTime.now(),
        ),
      ],
      accountModels: [
        AccountModel(
          accountName: 'acc 1',
          accountId: '1',
          dateCreated: DateTime.now(),
        ),AccountModel(
          accountName: 'acc 2',
          accountId: '1',
          dateCreated: DateTime.now(),
          hasSubAccount: true
        ),
      ],
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
  void onSingleModalItemPressed({required String name}){
    String redirectFrom =   state.redirectFrom!;
    if(redirectFrom == 'Category'){
      state = state.copyWith(transactionModel: state.transactionModel.copyWith(categoryName: name));
    }
    else if(redirectFrom == 'Account'){
      state = state.copyWith(transactionModel: state.transactionModel.copyWith(accountName: name));
    }
  }
}
