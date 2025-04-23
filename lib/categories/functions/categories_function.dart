import 'package:flutter/material.dart';
import 'package:my_spending/accounts/repository/isar_accounts_repository.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';

getCategoryTypeBackgroundColor({
  required String initialType,
  required String selectedType,
}) {
  if (initialType == LocaleKeys.expense && selectedType == LocaleKeys.expense) {
    return Colors.red.shade100;
  } else if (initialType == LocaleKeys.income &&
      selectedType == LocaleKeys.income) {
    return Colors.green.shade100;
  }
  return Colors.white;
}
