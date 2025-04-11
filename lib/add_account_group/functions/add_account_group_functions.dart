import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account_group/provider/add_account_group_state.dart';
import 'package:my_spending/add_account_group/repository/isar_add_account_group_repository.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/provider/app_state.dart';

onAddAccountGroupSavePressed(WidgetRef ref) {
  final authServiceProvider = Provider((ref) => IsarAddAccountGroupRepository());
  // IsarAddAccountGroupRepository isarAddAccountGroupRepository = IsarAddAccountGroupRepository();
  unFocus();
  // authServiceProvider.addAccountGroup(groupName: ref.read(addAccountGroupStateProvider.select((state) => state.groupName)));
  ref.read(appStateProvider).formKey.currentState?.validate();
  ref.read(addAccountGroupStateProvider.notifier).updateSaveButtonPressedStatus();

}

onAddAccountGroupTextFieldChange({required WidgetRef ref, required String text}) {

  ref.read(addAccountGroupStateProvider.notifier).updateValue(text);
}
