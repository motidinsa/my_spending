import 'package:my_spending/accounts/repository/isar_accounts_repository.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';

List<List<AccountModel>> getGroupedAccounts(List<AccountModel> accounts) {
  final Map<String, List<AccountModel>> groupedAccounts = {};
  for (final account in accounts) {
    groupedAccounts.putIfAbsent(account.groupId ?? '', () => []).add(account);
  }
  var tobeReturned = groupedAccounts.values.toList();
  IsarAccountsRepository isarAccountsRepository = IsarAccountsRepository();

  tobeReturned.sort((a, b) {
    int? indexA =
        isarAccountsRepository.getAccountGroupSortIndex(a.first.groupId);
    int? indexB =
        isarAccountsRepository.getAccountGroupSortIndex(b.first.groupId);
    if (indexA == null && indexB == null) {
      return 0; // Both are null, keep order
    } else if (indexA == null) {
      return 1; // a goes after b
    } else if (indexB == null) {
      return -1; // b goes after a
    } else {
      return indexA.compareTo(indexB);
    }
  });

  return tobeReturned;
}

String getAccountGroupName(String? groupId) {
  IsarAccountsRepository isarAccountsRepository = IsarAccountsRepository();
  return groupId != null
      ? isarAccountsRepository.getAccountGroupName(groupId)
      : 'Ungrouped';
}
