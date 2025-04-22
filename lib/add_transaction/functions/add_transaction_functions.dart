import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/transaction_type_modal_sheet.dart';
import 'package:my_spending/core/constants/language_constants.dart';

getAddTransactionTextFieldIcon(String title) {
  if (title == date) {
    return Icon(Icons.date_range);
  } else if (title == account) {
    return Icon(Icons.account_balance_rounded);
  } else if (title == category) {
    return Icon(Icons.list_alt_rounded);
  } else if (title == amount) {
    return Icon(Icons.attach_money_rounded);
  } else if (title == tip) {
    return Icon(Icons.volunteer_activism_outlined);
  } else if (title == fee) {
    return Icon(Icons.attach_money_rounded);
  } else if (title == description) {
    return Icon(Icons.edit, color: Colors.grey.shade700);
  }
}

isReadOnlyAddTransactionTextField(String title) {
  return [date, account, category].contains(title);
}

getLabelText(String title) {
  if ([tip, fee].contains(title)) {
    return title.tr();
  }
}

getTextFieldData(String title) {
  if (title == date) {
    return DateTime.now().toString();
  }
}

setData(WidgetRef ref, String title) {
  if (title == category) {
    // ref.watch(addTransactionStateProvider.select((state) => DateTime(2021)));
    ref.read(addTransactionStateProvider.notifier).updateIndex(0);
  }
}

getAddTransactionTextFieldData(WidgetRef ref, String title) {
  if (title == date) {
    return ref.watch(
      addTransactionStateProvider.select(
        (state) => state.transactionModel.date.toString(),
      ),
    );
  } else if (title == account) {
    return ref.watch(
      addTransactionStateProvider.select(
        (state) => state.transactionModel.accountName,
      ),
    );
  } else if (title == category) {
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
  if (title == date) {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      ref.read(addTransactionStateProvider.notifier).updateDate(pickedDate);
    }
  } else if ([account, category].contains(title)) {
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
}) {
  if (title == amount) {
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
  if (initialType == expense && selectedType == expense) {
    return Colors.red.shade100;
  } else if (initialType == income && selectedType == income) {
    return Colors.green.shade100;
  } else if (initialType == transfer && selectedType == transfer) {
    return Colors.grey.shade300;
  }
  return Colors.white;
}

String getAddTransactionHintText(String title) {
  if (title == description) {
    return optional.tr();
  }
  return '';
}
