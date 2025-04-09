import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/provider/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/transaction_type_modal_sheet.dart';

BorderRadius? getTransactionSelectBorderRadius(String name) {
  return BorderRadius.only(
    topLeft: name == 'Expense' ? Radius.circular(12) : Radius.zero,
    bottomLeft: name == 'Expense' ? Radius.circular(12) : Radius.zero,
    bottomRight: name == 'Transfer' ? Radius.circular(12) : Radius.zero,
    topRight: name == 'Transfer' ? Radius.circular(12) : Radius.zero,
  );
}

getAddTransactionTextFieldIcon(String title) {
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

isReadOnlyAddTransactionTextField(String title) {
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
  if (title == 'Date') {
    return ref.watch(
      addTransactionStateProvider.select(
        (state) => state.transactionModel.date.toString(),
      ),
    );
  } else if (title == 'Account') {
    return ref.watch(
      addTransactionStateProvider.select(
        (state) => state.transactionModel.accountName,
      ),
    );
  } else if (title == 'Category') {
    return ref.watch(
      addTransactionStateProvider.select(
        (state) => state.transactionModel.categoryName,
      ),
    );
  }
  return '';
}

onAddTransactionTextFieldPressed({
  required BuildContext context,
  required WidgetRef ref,
  required String title,
}) async {
  if (title == 'Date') {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      ref.read(addTransactionStateProvider.notifier).updateDate(pickedDate);
    }
  } else if (['Account', 'Category'].contains(title)) {
    ref.read(addTransactionStateProvider.notifier).setSelectedType(title);
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return TransactionTypeModalSheet(redirectFrom: title);
      },
    ).then((value) {});
  }
}
onAddTransactionTextFieldChange({
  required WidgetRef ref,
  required String title,
  required String text,
})  {
if (title == 'Amount') {
    ref.read(addTransactionStateProvider.notifier).onAmountChanged(text);
  }
}

onTransactionTypeSelect({required WidgetRef ref, required String type}) {
  ref.read(addTransactionStateProvider.notifier).updateTransactionState(type);
}

getTransactionTypeBackgroundColor({
  required String initialType,
  required String selectedType,
}) {
  if (initialType == 'Expense' && selectedType == 'Expense') {
    return Colors.red.shade100;
  } else if (initialType == 'Income' && selectedType == 'Income') {
    return Colors.green.shade100;
  } else if (initialType == 'Transfer' && selectedType == 'Transfer') {
    return Colors.grey.shade300;
  }
  return Colors.white;
}
