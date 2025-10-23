import 'package:isar_community/isar.dart';
import 'package:my_spending/add_account/repository/add_account_repository.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';

class IsarAddAccountRepository implements AddAccountRepository {
  final Isar _isar = locator();

  @override
  Future<void> addAccount({
    required AccountModel accountModel,
  }) async {
    await _isar.writeTxn(() async {
      await _isar.accountModels.put(accountModel);
    });
  }
}
