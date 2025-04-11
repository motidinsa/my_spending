import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:path_provider/path_provider.dart';

final locator = GetIt.instance;

void setupDependencyInjection() {
  locator.registerSingletonAsync<Isar>(() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open([AccountGroupModelSchema], directory: dir.path);
  });
}
