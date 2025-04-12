import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account_group/state/add_account_group_state.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/state/app_state.dart';

onAddAccountGroupSavePressed(WidgetRef ref) {
  unFocus();
  ref
      .read(addAccountGroupStateProvider.notifier)
      .updateSaveButtonPressedStatus();
  if (ref.read(appStateProvider).formKey.currentState?.validate() == true) {
    ref.read(addAccountGroupStateProvider.notifier).addAccountGroup();
  }
}

onAddAccountGroupTextFieldChange({
  required WidgetRef ref,
  required String text,
}) {
  ref.read(addAccountGroupStateProvider.notifier).updateValue(text);
}
