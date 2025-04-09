import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account/ui/account_group_list.dart';

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
  } else if (title == 'Description (Optional)') {
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
        return AccountGroupList();
      },
    ).then((value) {});
  }
}

onAddAccountTextFieldChange({
  required WidgetRef ref,
  required String title,
  required String text,
}) {
  // if (title == 'Amount') {
  //   ref.read(addTransactionStateProvider.notifier).onAmountChanged(text);
  // }
}
