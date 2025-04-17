import 'package:isar/isar.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_account_group/repository/add_account_group_repository.dart';
import 'package:my_spending/add_category/repository/add_category_repository.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';

class IsarAddCategoryRepository implements AddCategoryRepository {
  final Isar _isar = locator();

  @override
  Future<void> addCategory({required CategoryModel categoryModel}) async {
    await _isar.writeTxn(() async {
      await _isar.categoryModels.put(categoryModel);
    });
  }
}
