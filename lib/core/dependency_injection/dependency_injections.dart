import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';
import 'package:my_spending/core/model/app_model/app_model.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/core/repository/isar_app_repository.dart';
import 'package:path_provider/path_provider.dart';

final locator = GetIt.instance;

Future<void> setupDependencyInjection() async {
  locator.registerSingletonAsync<Isar>(() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      Isar isar = await Isar.open([
        AppModelSchema,
        AccountGroupModelSchema,
        AccountModelSchema,
        CategoryModelSchema,
        SubcategoryModelSchema,
      ], directory: dir.path);
      IsarAppRepository isarAppRepository = IsarAppRepository(isar: isar);
      isarAppRepository.addDefaultAccountGroup();
      return isar;
    }

    return Future.value(Isar.getInstance());
  });
}
