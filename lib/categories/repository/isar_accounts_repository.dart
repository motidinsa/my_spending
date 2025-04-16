import 'package:isar/isar.dart';
import 'package:my_spending/accounts/repository/accounts_repository.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/account_model.dart';

class IsarAccountsRepository implements AccountsRepository {
  final Isar _isar = locator();

  @override
  String getAccountGroupName(String accountGroupId) {
    return _isar.accountGroupModels
        .filter()
        .groupIdEqualTo(accountGroupId)
        .findFirstSync()!
        .groupName;
  }

  @override
  Future<void> updateAccountGroupSortIndex(
    List<AccountGroupModel> accountGroupModels,
  ) async {
    await _isar.writeTxn(() async {
      await _isar.accountGroupModels.putAll(accountGroupModels);
    });
  }

  @override
  AccountGroupModel? getAccountGroupModel(String? groupId) {
    return _isar.accountGroupModels
        .filter()
        .groupIdEqualTo(groupId)
        .findFirstSync();
  }

  @override
  int? getAccountGroupSortIndex(String? groupId) {
    return _isar.accountGroupModels
        .filter()
        .groupIdEqualTo(groupId)
        .findFirstSync()
        ?.sortIndex;
  }

  @override
  Future<List<AccountModel>> getAllAccountLists() async {
    return await _isar.accountModels.where().findAll();
  }
}
