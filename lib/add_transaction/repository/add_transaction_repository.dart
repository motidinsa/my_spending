import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';

abstract class AddTransactionRepository {
  Future<List<AccountGroupModel>> getAllAccountGroups();

  Future<List<AccountModel>> getAccountModels(String? groupId);

  Future<List<CategoryModel>> getExpenseCategories();

  Future<List<CategoryModel>> getIncomeCategories();
  Future<List<SubcategoryModel>> getSubcategories(String categoryId);
}
