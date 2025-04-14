import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/core/model/account_model.dart';
import 'package:path_provider/path_provider.dart';

final locator = GetIt.instance;

void setupDependencyInjection() {
  locator.registerSingletonAsync<Isar>(() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([
        AccountGroupModelSchema,
        AccountModelSchema,
      ], directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  });
}
