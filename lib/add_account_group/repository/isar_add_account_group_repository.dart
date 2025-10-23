import 'package:isar_community/isar.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_account_group/repository/add_account_group_repository.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';

class IsarAddAccountGroupRepository implements AddAccountGroupRepository {
  final Isar _isar = locator();

  @override
  Future<void> addAccountGroup({
    required AccountGroupModel accountGroupModel,
  }) async {
    await _isar.writeTxn(() async {
      await _isar.accountGroupModels.put(accountGroupModel);
    });
  }
}
