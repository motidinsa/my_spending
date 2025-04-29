import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';

abstract class AddTransactionRepository {
  Future<List<AccountGroupModel>> getAllAccountGroups();
  List<AccountModel> getAccountModels(String? groupId);

  // Future<List<CategoryModel>> getAllCategories();
  //
  // Future<List<AccountModel>> getSubAccounts(String accountId);
  //
  // Future<List<CategoryModel>> getSubcategories(String categoryId);
}
