import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

String? validateAddTransactionTextField({
  String? data,
  required String title,
  required WidgetRef ref,
}) {
  final addTransactionState = ref.read(addTransactionStateProvider);
  final addTransactionNotifier = ref.read(addTransactionStateProvider.notifier);
  final numberRegex = RegExp(r'^\d+(\.\d+)?$');
  if (title == LocaleKeys.amount && addTransactionNotifier.amount.isEmpty) {
    if (!numberRegex.hasMatch(addTransactionNotifier.amount)) {
      return 'Please enter a valid amount';
    }
  } else if (title == LocaleKeys.tip && addTransactionNotifier.tip.isNotEmpty ||
      title == LocaleKeys.fee && addTransactionNotifier.fee.isNotEmpty) {
    return 'Please enter a valid amount';
  } else if ([
    LocaleKeys.expense,
    LocaleKeys.income,
  ].contains(addTransactionState.transactionType)) {
    if (title == LocaleKeys.account &&
        addTransactionState.transactionModel.accountName.isEmpty) {
      return 'Select account';
    } else if (title == LocaleKeys.category &&
        addTransactionState.transactionModel.categoryName.isEmpty) {
      return 'Select category';
    }
  } else if (addTransactionState.transactionType == LocaleKeys.transfer) {
    if (title == LocaleKeys.from && addTransactionState.fromAccount == null) {
      return 'Select from account';
    } else if (title == LocaleKeys.to &&
        addTransactionState.toAccount == null) {
      return 'Select to account';
    }
  }

  return null;
}
