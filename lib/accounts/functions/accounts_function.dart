import 'package:my_spending/accounts/repository/isar_accounts_repository.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';

List<List<AccountModel>> getGroupedAccounts(List<AccountModel> accounts) {
  final Map<String, List<AccountModel>> groupedAccounts = {};
  for (final account in accounts) {
    groupedAccounts.putIfAbsent(account.groupId ?? '', () => []).add(account);
  }
  var tobeReturned = groupedAccounts.values.toList();
  const int nullOrderIndexSortValue = 999999;
  IsarAccountsRepository isarAccountsRepository = IsarAccountsRepository();

  tobeReturned.sort((a, b) {
    final indexA =
        isarAccountsRepository.getAccountGroupSortIndex(a.first.groupId) ??
        nullOrderIndexSortValue;
    final indexB =
        isarAccountsRepository.getAccountGroupSortIndex(b.first.groupId) ??
        nullOrderIndexSortValue;
    return indexA.compareTo(indexB);
  });

  return tobeReturned;
}

String getAccountGroupName(String? groupId) {
  IsarAccountsRepository isarAccountsRepository = IsarAccountsRepository();
  return groupId != null
      ? isarAccountsRepository.getAccountGroupName(groupId)
      : 'Ungrouped';
}
