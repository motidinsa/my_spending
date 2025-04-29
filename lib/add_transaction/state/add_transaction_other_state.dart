import 'package:my_spending/add_transaction/model/add_transaction_other_state_model.dart';
import 'package:my_spending/add_transaction/model/add_transaction_state_model.dart';
import 'package:my_spending/add_transaction/repository/isar_add_transaction_repository.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/transaction_model/transaction_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_transaction_other_state.g.dart';

@riverpod
class AddTransactionOtherState extends _$AddTransactionOtherState {
  IsarAddTransactionRepository isarAddTransactionRepository = IsarAddTransactionRepository();
  @override
  Future<AddTransactionOtherStateModel> build() async {

    return AddTransactionOtherStateModel(
        accountGroupModels: await isarAddTransactionRepository.getAllAccountGroups()
    );
  }

  // void updateIndex(int index) {
  //   state = state.copyWith.transactionModel(date: DateTime(2027));
  // }
  //
  // void updateDate(DateTime time) {
  //   state = state.copyWith.transactionModel(date: time);
  // }
  //
  // void onAddAmountIconPressed() {
  //   state = state.copyWith(isAmountAddButtonPressed: true);
  // }
  //
  // void onRemoveAmountIconPressed() {
  //   state = state.copyWith(isAmountAddButtonPressed: null);
  // }
  //
  // void updateTransactionState(String type) {
  //   state = state.copyWith(transactionType: type);
  // }
  //
  // void changeModalHeight(double height) {
  //   state = state.copyWith(modalHeight: height);
  // }
  //
  // void updateSubcategoryHeight(double givenHeight, double totalHeight) {
  //   if (givenHeight > totalHeight / 2) {
  //     state = state.copyWith(modalHeight: totalHeight / 2);
  //   }
  // }
  //
  // void setSelectedType(String source) {
  //   state = state.copyWith(redirectFrom: source);
  // }
  //
  // void onSingleModalItemPressed({required String name}) {
  //   String redirectFrom = state.redirectFrom!;
  //   if (redirectFrom == LocaleKeys.category) {
  //     state = state.copyWith(
  //       transactionModel: state.transactionModel.copyWith(categoryName: name),
  //     );
  //   } else if (redirectFrom == LocaleKeys.account) {
  //     state = state.copyWith(
  //       transactionModel: state.transactionModel.copyWith(accountName: name),
  //     );
  //   }
  // }
  //
  // void onAmountChanged(String amount) {
  //   state = state.copyWith(amount: amount);
  // }
}
