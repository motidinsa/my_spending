import 'package:isar/isar.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_transaction/repository/add_transaction_repository.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';

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
  Future<List<AccountModel>> getAccountModels(String? groupId) async {
    return await _isar.accountModels.filter().groupIdEqualTo(groupId).findAll();
  }

  @override
  Future<List<CategoryModel>> getExpenseCategories() async {
    return await _isar.categoryModels
        .filter()
        .categoryTypeEqualTo(LocaleKeys.expense)
        .or()
        .categoryTypeEqualTo(LocaleKeys.both)
        .findAll()
        .then((value) {
          return value..sort((a, b) {
            if (a.expenseSortIndex == null && b.expenseSortIndex == null) {
              return 0; // Both are null, keep order
            } else if (a.expenseSortIndex == null) {
              return 1; // a goes after b
            } else if (b.expenseSortIndex == null) {
              return -1; // b goes after a
            } else {
              return a.expenseSortIndex!.compareTo(b.expenseSortIndex!);
            }
          });
        });
  }

  @override
  Future<List<CategoryModel>> getIncomeCategories() async {
    return await _isar.categoryModels
        .filter()
        .categoryTypeEqualTo(LocaleKeys.income)
        .or()
        .categoryTypeEqualTo(LocaleKeys.both)
        .findAll()
        .then((value) {
          return value..sort((a, b) {
            if (a.incomeSortIndex == null && b.incomeSortIndex == null) {
              return 0; // Both are null, keep order
            } else if (a.incomeSortIndex == null) {
              return 1; // a goes after b
            } else if (b.incomeSortIndex == null) {
              return -1; // b goes after a
            } else {
              return a.incomeSortIndex!.compareTo(b.incomeSortIndex!);
            }
          });
        });
  }

  @override
  Future<List<SubcategoryModel>> getSubcategories(String categoryId) async {
    return await _isar.subcategoryModels
        .filter()
        .categoryIdEqualTo(categoryId)
        .findAll()
        .then((value) {
          return value..sort((a, b) {
            if (a.sortIndex == null && b.sortIndex == null) {
              return 0; // Both are null, keep order
            } else if (a.sortIndex == null) {
              return 1; // a goes after b
            } else if (b.sortIndex == null) {
              return -1; // b goes after a
            } else {
              return a.sortIndex!.compareTo(b.sortIndex!);
            }
          });
        });
  }
}
