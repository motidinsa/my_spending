import 'package:flutter/material.dart';
import 'package:my_spending/add_transaction/model/add_transaction_state_model.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/transaction_type_modal_sheet.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/transaction_model/transaction_model.dart';
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

      transactionType: LocaleKeys.expense,
    );
  }

  String amount = '';
  bool isInitDialogShown = false;
  String? parentName;
  String? categoryType;

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

  void setSelectedId(String id) {
    state = state.copyWith(selectedId: id);
  }

  void resetSelectedId() {
    state = state.copyWith(selectedId: null);
    parentName = null;
  }

  void onAmountChanged(String givenAmount) {
    amount = givenAmount;
  }

  void requestAmountFocus() {
    state = state.copyWith(hasAmountFocus: true);
  }

  void removeAmountFocus() {
    state = state.copyWith(hasAmountFocus: false);
  }

  void resetCategory() {
    state = state.copyWith(
      transactionModel: state.transactionModel.copyWith(
        categoryName: '',
        categoryId: '',
      ),
    );
    categoryType = null;
  }

  void updateCategory({
    required String name,
    required String id,
    String? selectedCategoryType,
  }) {
    state = state.copyWith(
      transactionModel: state.transactionModel.copyWith(
        categoryName: parentName != null ? '$parentName / $name' : name,
        categoryId: id,
      ),
    );
    categoryType = selectedCategoryType;
  }

  void updateAccount({required String name, required String id}) {
    state = state.copyWith(
      transactionModel: state.transactionModel.copyWith(
        accountName: parentName != null ? '$parentName / $name' : name,
        accountId: id,
      ),
    );
  }

  void onNextFocus(BuildContext context) {
    String redirectFrom = state.redirectFrom!;
    if (state.transactionModel.categoryId.isEmpty ||
        state.transactionModel.accountId.isEmpty) {
      if (redirectFrom == LocaleKeys.account) {
        if (state.transactionModel.categoryId.isEmpty) {
          setSelectedType(LocaleKeys.category);
        }
      } else if (redirectFrom == LocaleKeys.category) {
        if (state.transactionModel.accountId.isEmpty) {
          setSelectedType(LocaleKeys.account);
        }
      }
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        builder: (BuildContext context) {
          return TransactionTypeModalSheet(redirectFrom: state.redirectFrom!);
        },
      ).then((value) {
        resetSelectedId();
      });
    } else if (amount.isEmpty) {
      requestAmountFocus();
    }
  }
}
