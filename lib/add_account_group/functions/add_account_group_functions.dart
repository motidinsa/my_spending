import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account_group/provider/add_account_group_state.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/provider/app_state.dart';

onAddAccountGroupSavePressed(WidgetRef ref) {
  unFocus();
  ref.read(appStateProvider.notifier).formKey.currentState?.validate();
  ref.read(addAccountGroupStateProvider.notifier).updateSaveButtonPressedStatus();

}

onAddAccountGroupTextFieldChange({required WidgetRef ref, required String text}) {

  ref.read(addAccountGroupStateProvider.notifier).updateValue(text);
}
