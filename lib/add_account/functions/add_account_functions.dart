import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/add_account/state/add_account_state.dart';
import 'package:my_spending/add_account/ui/account_group_list.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/core/route/routes.dart';

getAddAccountTextFieldIcon(String title) {
  if (title == 'Account group') {
    return Icon(Icons.arrow_drop_down_rounded);
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
  } else if (title == 'Description') {
    return Icon(Icons.edit, color: Colors.grey.shade700);
  }
}

isReadOnlyAddAccountTextField(String title) {
  return title == 'Account group';
}

getAddTransactionTextFieldKeyBoardType(String title) {
  if (title == 'Amount') {
    return TextInputType.number;
  }
}

onAddAccountTextFieldPressed({
  required BuildContext context,
  required WidgetRef ref,
  required String title,
}) async {
  if (title == 'Account group') {
    // ref.read(addTransactionStateProvider.notifier).setSelectedType(title);
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return const AccountGroupList();
      },
    ).then((value) {
      // FocusManager.instance.primaryFocus?.unfocus();
    });
  }
}

onAddAccountTextFieldChange({
  required WidgetRef ref,
  required String title,
  required String text,
}) {
  if (title == 'Name') {
    ref.read(addAccountStateProvider.notifier).setAccountName(text);
  } else if (title == 'Amount') {
    ref.read(addAccountStateProvider.notifier).setAmount(text);
  } else if (title == 'Description') {
    ref.read(addAccountStateProvider.notifier).setDescription(text);
  }
}

getAddAccountHintText(String title) {
  if (['Account group', 'Description'].contains(title)) {
    return 'Optional';
  }
}

getAddAccountTextFieldData(WidgetRef ref, String title) {
  if (title == 'Account group') {
    return ref.watch(addAccountStateProvider).groupName ?? '';
  } else if (title == 'Name') {
    return ref.watch(addAccountStateProvider.notifier).accountName;
  } else if (title == 'Amount') {
    return ref.watch(addAccountStateProvider.notifier).amount;
  } else if (title == 'Description') {
    return ref.watch(addAccountStateProvider.notifier).description;
  }
  return '';
}

onSingleAccountGroupSelected(WidgetRef ref, AccountGroupModel accountGroupModel) {
  ref.read(addAccountStateProvider.notifier).setAccountGroupName(accountGroupModel);
  navigatorKey.currentContext?.pop();
  if (ref.read(addAccountStateProvider.notifier).accountName.isEmpty) {
    ref.read(addAccountStateProvider.notifier).addNameFocus();
  } else if (ref.read(addAccountStateProvider.notifier).amount.isEmpty) {
    ref.read(addAccountStateProvider.notifier).addAmountFocus();
  }
}

bool hasAddAccountTextFieldFocus(WidgetRef ref, String title) {
  if ((title == 'Name' &&
          ref.read(addAccountStateProvider).hasNameFocus == true &&
          ref.read(addAccountStateProvider.notifier).accountName.isEmpty) ||
      (title == 'Amount' &&
          ref.read(addAccountStateProvider).hasAmountFocus == true &&
          ref.read(addAccountStateProvider.notifier).amount.isEmpty)) {
    return true;
  }
  return false;
}

onAddAccountSavePressed(WidgetRef ref) {
  ref.read(addAccountStateProvider.notifier).updateSaveButtonPressedStatus();
  if (ref
          .read(addAccountStateProvider.notifier)
          .formKey
          .currentState
          ?.validate() ==
      true) {
    ref.read(addAccountStateProvider.notifier).saveAccount();
  } else {
    ref.read(addAccountStateProvider.notifier).addFocus();
  }
}
