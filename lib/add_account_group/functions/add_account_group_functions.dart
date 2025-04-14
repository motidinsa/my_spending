import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account_group/state/add_account_group_state.dart';

onAddAccountGroupSavePressed(WidgetRef ref) {
  ref
      .read(addAccountGroupStateProvider.notifier)
      .updateSaveButtonPressedStatus();
  if (ref
          .read(addAccountGroupStateProvider.notifier)
          .formKey
          .currentState
          ?.validate() ==
      true) {
    ref.read(addAccountGroupStateProvider.notifier).addAccountGroup();
  } else {
    ref.read(addAccountGroupStateProvider.notifier).addGroupNameFocus();
  }
}

onAddAccountGroupTextFieldChange({
  required WidgetRef ref,
  required String text,
}) {
  ref.read(addAccountGroupStateProvider.notifier).updateValue(text);
}

bool hasAddAccountGroupTextFieldFocus(WidgetRef ref) {
  if (ref.read(addAccountGroupStateProvider).hasGroupNameFocus == true) {
    return true;
  }
  return false;
}
