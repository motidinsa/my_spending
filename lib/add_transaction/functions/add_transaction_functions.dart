import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/transaction_type_modal_sheet.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/route/routes.dart';

Icon? getAddTransactionTextFieldIcon(String title) {
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
  } else if (title == LocaleKeys.from || title == LocaleKeys.to) {
    return Icon(Icons.account_balance_rounded, color: Colors.grey.shade700);
  }
  return null;
}

bool isReadOnlyAddTransactionTextField(String title) {
  return [
    LocaleKeys.date,
    LocaleKeys.account,
    LocaleKeys.category,
    LocaleKeys.from,
    LocaleKeys.to,
  ].contains(title);
}

String? getLabelText(String title) {
  if ([LocaleKeys.tip, LocaleKeys.fee].contains(title)) {
    return title.tr();
  }
  return null;
}

String? getTextFieldData(String title) {
  if (title == LocaleKeys.date) {
    return DateFormat('E, dd/MM/yyyy').format(DateTime.now());
  }
  return null;
}

void setData(WidgetRef ref, String title) {
  if (title == LocaleKeys.category) {
    // ref.watch(addTransactionStateProvider.select((state) => DateTime(2021)));
    ref.read(addTransactionStateProvider.notifier).updateIndex(0);
  }
}

String getAddTransactionTextFieldData(WidgetRef ref, String title) {
  final addTransactionNotifier = ref.read(addTransactionStateProvider.notifier);
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
  } else if (title == LocaleKeys.amount) {
    return addTransactionNotifier.amount;
  } else if (title == LocaleKeys.tip) {
    return addTransactionNotifier.tip;
  } else if (title == LocaleKeys.fee) {
    return addTransactionNotifier.fee;
  } else if (title == LocaleKeys.from) {
    return ref.watch(
          addTransactionStateProvider.select((state) => state.fromAccount),
        ) ??
        '';
  } else if (title == LocaleKeys.to) {
    return ref.watch(
          addTransactionStateProvider.select((state) => state.toAccount),
        ) ??
        '';
  }
  return '';
}

void onAddTransactionTextFieldPressed({
  required BuildContext context,
  required WidgetRef ref,
  required String title,
}) {
  if (title == LocaleKeys.date) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((pickedDate) {
      if (pickedDate != null) {
        ref.read(addTransactionStateProvider.notifier).updateDate(pickedDate);
        onAddTransactionNextItemFocus(
          ref: ref,
          context: context,
          currentType: LocaleKeys.date,
        );
      }
    });
  } else if ([
    LocaleKeys.account,
    LocaleKeys.category,
    LocaleKeys.from,
    LocaleKeys.to,
  ].contains(title)) {
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

void onAddTransactionTextFieldChange({
  required WidgetRef ref,
  required String title,
  required String text,
}) {
  final addTransactionNotifier = ref.read(addTransactionStateProvider.notifier);
  if (title == LocaleKeys.amount) {
    addTransactionNotifier.onAmountChanged(text);
  } else if (title == LocaleKeys.tip) {
    addTransactionNotifier.onTipChanged(text);
  } else if (title == LocaleKeys.fee) {
    addTransactionNotifier.onFeeChanged(text);
  }
}

void onTransactionTypeSelect({
  required WidgetRef ref,
  required String type,
  required BuildContext context,
}) {
  final addTransactionNotifier = ref.read(addTransactionStateProvider.notifier);
  addTransactionNotifier.updateTransactionState(type);

  String? categoryType = addTransactionNotifier.categoryType;
  if (categoryType != null) {
    if ((categoryType == LocaleKeys.expense && type == LocaleKeys.income) ||
        (categoryType == LocaleKeys.income && type == LocaleKeys.expense)) {
      addTransactionNotifier.resetCategory();
    }
  }
  addTransactionNotifier.onNextFocus(context);
}

Color getTransactionTypeBackgroundColor({
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
    } else if (ref.read(addTransactionStateProvider.notifier).amount.isEmpty) {
      ref.read(addTransactionStateProvider.notifier).requestAmountFocus();
    }
  }
}

void onSingleModalItemPressed({
  required String name,
  required String type,
  required String id,
  required bool hasSubItem,
  required BuildContext context,
  String? selectedCategoryType,
  required WidgetRef ref,
}) {
  final addTransactionState = ref.read(addTransactionStateProvider);
  final addTransactionNotifier = ref.read(addTransactionStateProvider.notifier);
  String redirectFrom = addTransactionState.redirectFrom!;
  if (hasSubItem) {
    addTransactionNotifier.setSelectedId(id);
    addTransactionNotifier.parentName = name;
    if (type != LocaleKeys.from && type != LocaleKeys.to) {
      addTransactionNotifier.categoryType = selectedCategoryType;
    }
  } else {
    if (type == LocaleKeys.from) {
      addTransactionNotifier.updateFromAccount(name: name, id: id);
    } else if (type == LocaleKeys.to) {
      addTransactionNotifier.updateToAccount(name: name, id: id);
    } else if (redirectFrom == LocaleKeys.category) {
      addTransactionNotifier.updateCategory(
        name: name,
        id: id,
        selectedCategoryType: selectedCategoryType,
      );
    } else if (redirectFrom == LocaleKeys.account) {
      addTransactionNotifier.updateAccount(name: name, id: id);
    }
    navigatorKey.currentContext?.pop();
    if (addTransactionState.transactionModel.accountId.isEmpty ||
        addTransactionState.transactionModel.categoryId.isEmpty ||
        addTransactionNotifier.fromAccountId == null ||
        addTransactionNotifier.toAccountId == null ||
        addTransactionNotifier.amount.isEmpty) {
      addTransactionNotifier.onNextFocus(context);
    }
  }
}

void onAddTransactionSaveButtonPressed(WidgetRef ref, BuildContext context) {
  final addTransactionNotifier = ref.read(addTransactionStateProvider.notifier);
  addTransactionNotifier.updateSaveButtonPressedStatus();
  if (addTransactionNotifier.formKey.currentState!.validate()) {
  } else {
    addTransactionNotifier.onNextFocus(context);
  }
}
