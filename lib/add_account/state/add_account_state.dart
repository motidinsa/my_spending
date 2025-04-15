import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/accounts/state/accounts_state.dart';
import 'package:my_spending/add_account/model/add_account_state_model.dart';
import 'package:my_spending/add_account/repository/isar_add_account_repository.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/model/account_model.dart';
import 'package:my_spending/core/route/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_account_state.g.dart';

@riverpod
class AddAccountState extends _$AddAccountState {
  String accountName = '';
  String amount = '';
  String description = '';
  String? groupId;
  final formKey = GlobalKey<FormState>();

  @override
  AddAccountStateModel build() {
    return AddAccountStateModel();
  }

  void setAccountGroupName(AccountGroupModel accountGroupModel) {
    state = state.copyWith(groupName: accountGroupModel.groupName);
    groupId = accountGroupModel.groupId;
  }

  void addNameFocus() {
    state = state.copyWith(hasNameFocus: true, hasAmountFocus: false);
  }

  void addAmountFocus() {
    state = state.copyWith(hasAmountFocus: true, hasNameFocus: false);
  }

  void addFocus() {
    state = state.copyWith(hasAmountFocus: true, hasNameFocus: true);
  }

  void setAccountName(String name) {
    accountName = name;
  }

  void setAmount(String value) {
    amount = value;
  }

  void setDescription(String value) {
    description = value;
  }

  void saveAccount() async {
    try {
      state = state.copyWith(isLoading: true);
      IsarAddAccountRepository isarAddAccountRepository =
          IsarAddAccountRepository();
      DateTime now = DateTime.now();
      await isarAddAccountRepository.addAccount(
        accountModel: AccountModel(
          groupId: groupId,
          accountId: generateDatabaseId(now),
          dateCreated: now,
          accountName: accountName,
          amountAvailable: double.parse(amount),
          description: description,
        ),
      );
      navigatorKey.currentContext?.pop();
      ref.read(accountsStateProvider.notifier).updateAccountLists();
    } on Exception catch (e) {
      print(e);
    } finally {
      state = state.copyWith(isLoading: null);
    }
  }

  void updateSaveButtonPressedStatus() {
    state = state.copyWith(isSaveButtonPressed: true);
  }
}
