import 'package:my_spending/accounts/repository/isar_accounts_repository.dart';
import 'package:my_spending/core/model/account_model.dart';

List<List<AccountModel>> getGroupedAccounts(List<AccountModel> accounts) {
  final Map<String, List<AccountModel>> groupedAccounts = {};
  for (final account in accounts) {
    groupedAccounts
        .putIfAbsent(account.accountGroupId ?? '', () => [])
        .add(account);
  }
  return groupedAccounts.values.toList();
}

String getAccountGroupName(String groupId) {
  IsarAccountsRepository isarAccountsRepository = IsarAccountsRepository();
  return isarAccountsRepository.getAccountGroupName(groupId) ?? 'none';
}
