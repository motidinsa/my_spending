import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/transaction_type_modal_sheet.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

getAddTransactionTextFieldIcon(String title) {
  if (title == LocaleKeys.date) {
    return Icon(Icons.date_range);
  } else if (title == LocaleKeys.account) {
    return Icon(Icons.account_balance_rounded);
  } else if (title == LocaleKeys.category) {
    return Icon(Icons.list_alt_rounded);
  } else if (title == LocaleKeys.amount) {
    return Icon(Icons.attach_money_rounded);
  } else if (title == LocaleKeys.tip) {
    return Icon(Icons.volunteer_activism_outlined);
  } else if (title == LocaleKeys.fee) {
    return Icon(Icons.attach_money_rounded);
  } else if (title == LocaleKeys.description) {
    return Icon(Icons.edit, color: Colors.grey.shade700);
  }
}

isReadOnlyAddTransactionTextField(String title) {
  return [
    LocaleKeys.date,
    LocaleKeys.account,
    LocaleKeys.category,
  ].contains(title);
}

getLabelText(String title) {
  if ([LocaleKeys.tip, LocaleKeys.fee].contains(title)) {
    return title.tr();
  }
}

getTextFieldData(String title) {
  if (title == LocaleKeys.date) {
    return DateFormat('E, dd/MM/yyyy').format(DateTime.now());
  }
}

setData(WidgetRef ref, String title) {
  if (title == LocaleKeys.category) {
    // ref.watch(addTransactionStateProvider.select((state) => DateTime(2021)));
    ref.read(addTransactionStateProvider.notifier).updateIndex(0);
  }
}

getAddTransactionTextFieldData(WidgetRef ref, String title) {
  if (title == LocaleKeys.date) {
    return ref.watch(
      addTransactionStateProvider.select(
        (state) =>
            DateFormat('E, dd/MM/yyyy').format(state.transactionModel.date),
      ),
    );
  } else if (title == LocaleKeys.account) {
    return ref.watch(
      addTransactionStateProvider.select(
        (state) => state.transactionModel.accountName,
      ),
    );
  } else if (title == LocaleKeys.category) {
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
  if (title == LocaleKeys.date) {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      ref.read(addTransactionStateProvider.notifier).updateDate(pickedDate);
      onAddTransactionNextItemFocus(
        ref: ref,
        context: context,
        currentType: LocaleKeys.date,
      );
    }
  } else if ([LocaleKeys.account, LocaleKeys.category].contains(title)) {
    ref.read(addTransactionStateProvider.notifier).setSelectedType(title);
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return TransactionTypeModalSheet(redirectFrom: title);
      },
    ).then((value) {
      ref.read(addTransactionStateProvider.notifier).resetSelectedId();
    });
  }
}

onAddTransactionTextFieldChange({
  required WidgetRef ref,
  required String title,
  required String text,
}) {
  if (title == LocaleKeys.amount) {
    ref.read(addTransactionStateProvider.notifier).onAmountChanged(text);
  }
}

onTransactionTypeSelect({
  required WidgetRef ref,
  required String type,
  required BuildContext context,
}) {
  ref.read(addTransactionStateProvider.notifier).updateTransactionState(type);
  String? categoryType =
      ref.read(addTransactionStateProvider.notifier).categoryType;
  if (categoryType != null) {
    if ((categoryType == LocaleKeys.expense && type == LocaleKeys.income)||(categoryType == LocaleKeys.income && type == LocaleKeys.expense)) {
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        builder: (BuildContext context) {
          return TransactionTypeModalSheet(redirectFrom: LocaleKeys.category);
        },
      ).then((value) {
        ref.read(addTransactionStateProvider.notifier).resetSelectedId();
      });
      // ref.read(addTransactionStateProvider.notifier).onNextFocus(context);
    }
  }
}

getTransactionTypeBackgroundColor({
  required String initialType,
  required String selectedType,
}) {
  if (initialType == LocaleKeys.expense && selectedType == LocaleKeys.expense) {
    return Colors.red.shade100;
  } else if (initialType == LocaleKeys.income &&
      selectedType == LocaleKeys.income) {
    return Colors.green.shade100;
  } else if (initialType == LocaleKeys.transfer &&
      selectedType == LocaleKeys.transfer) {
    return Colors.grey.shade300;
  }
  return Colors.white;
}

String getAddTransactionHintText(String title) {
  if (title == LocaleKeys.description) {
    return LocaleKeys.optional.tr();
  }
  return '';
}

void onAddTransactionNextItemFocus({
  required String currentType,
  required WidgetRef ref,
  required BuildContext context,
}) {
  final addTransactionState = ref.read(addTransactionStateProvider);
  if (currentType == LocaleKeys.date) {
    if (addTransactionState.transactionModel.accountId.isEmpty ||
        addTransactionState.transactionModel.categoryId.isEmpty) {
      ref
          .read(addTransactionStateProvider.notifier)
          .setSelectedType(
            addTransactionState.transactionModel.accountId.isEmpty
                ? LocaleKeys.account
                : LocaleKeys.category,
          );
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        builder: (BuildContext context) {
          return TransactionTypeModalSheet(
            redirectFrom:
                addTransactionState.transactionModel.accountId.isEmpty
                    ? LocaleKeys.account
                    : LocaleKeys.category,
          );
        },
      ).then((value) {
        ref.read(addTransactionStateProvider.notifier).resetSelectedId();
      });
    } else if (addTransactionState.amount.isEmpty) {
      ref.read(addTransactionStateProvider.notifier).requestAmountFocus();
    }
  }
}
