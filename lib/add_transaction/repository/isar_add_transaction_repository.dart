import 'package:isar/isar.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_transaction/repository/add_transaction_repository.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';

class IsarAddTransactionRepository implements AddTransactionRepository {
  final Isar _isar = locator();

  @override
  Future<List<AccountGroupModel>> getAllAccountGroups() async {
    return await _isar.accountGroupModels.where().findAll().then((value) {
      return value..sort((a, b) {
        final indexA = a.sortIndex;
        final indexB = b.sortIndex;
        if (indexA == null && indexB == null) {
          return 0;
        } else if (indexA == null) {
          return 1;
        } else if (indexB == null) {
          return -1;
        } else {
          return indexA.compareTo(indexB);
        }
      });
    });
  }

  @override
  List<CategoryModel> getAllCategories() {
    // TODO: implement getAllCategories
    throw UnimplementedError();
  }

  @override
  List<AccountModel> getSubAccounts(String accountId) {
    // TODO: implement getSubAccounts
    throw UnimplementedError();
  }

  @override
  List<CategoryModel> getSubcategories(String categoryId) {
    // TODO: implement getSubcategories
    throw UnimplementedError();
  }

  @override
  List<AccountModel> getAccountModels(String? groupId) {
    return _isar.accountModels.filter().groupIdEqualTo(groupId).findAllSync();
  }
}
