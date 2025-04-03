import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/add_transaction/provider/add_transaction_state.dart';

BorderRadius? getTransactionSelectBorderRadius(String name) {
  return BorderRadius.only(
    topLeft: name == 'Expense' ? Radius.circular(12) : Radius.zero,
    bottomLeft: name == 'Expense' ? Radius.circular(12) : Radius.zero,
    bottomRight: name == 'Transfer' ? Radius.circular(12) : Radius.zero,
    topRight: name == 'Transfer' ? Radius.circular(12) : Radius.zero,
  );
}

getTextFieldIcon(String title) {
  if (title == 'Date') {
    return Icon(Icons.date_range);
  } else if (title == 'Account') {
    return Icon(Icons.account_balance_rounded);
  } else if (title == 'Category') {
    return Icon(Icons.list_alt_rounded);
  } else if (title == 'Amount') {
    return Icon(Icons.attach_money_rounded);
  } else if (title == 'Tip') {
    return Icon(Icons.volunteer_activism_outlined);
  } else if (title == 'Fee') {
    return Icon(Icons.attach_money_rounded);
  } else if (title == 'Description (Optional)') {
    return Icon(Icons.edit, color: Colors.grey.shade700);
  }
}

isReadOnlyTextField(String title) {
  return ['Date', 'Account', 'Category'].contains(title);
}

getLabelText(String title) {
  if (['Tip', 'Fee'].contains(title)) {
    return title;
  }
}

getTextFieldData(String title) {
  if (title == 'Date') {
    return DateTime.now().toString();
  }
}

setData(WidgetRef ref, String title) {
  if (title == 'Category') {
    // ref.watch(addTransactionStateProvider.select((state) => DateTime(2021)));
    ref.read(addTransactionStateProvider.notifier).updateIndex(0);
  }
}

getData(WidgetRef ref, String title) {
  // final transactionState = ref.watch(addTransactionStateProvider);
  if (title == 'Date') {
    return ref.watch(addTransactionStateProvider.select((state) => state.date.toString()));
  } else if (title == 'Account') {
    return ref.watch(addTransactionStateProvider.select((state) => state.accountName));
  }
  return '';
}
