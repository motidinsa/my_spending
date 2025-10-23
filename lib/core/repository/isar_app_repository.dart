import 'package:isar_community/isar.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/core/model/app_model/app_model.dart';
import 'package:my_spending/core/repository/app_repository.dart';

class IsarAppRepository implements AppRepository {
  final Isar isar;
  IsarAppRepository({required this.isar});

  @override
  Future<void> addDefaultAccountGroup() async {
    AppModel? appModel = isar.appModels.where().findFirstSync();
    await isar.writeTxn(() async {
      if (appModel == null ||
          appModel.isDefaultAccountGroupInitialized != true) {
        final accountGroup = AccountGroupModel()
          ..groupName = ''
          ..dateCreated = DateTime.now();
        await isar.accountGroupModels.put(accountGroup);
        
        final appModel = AppModel()
          ..isDefaultAccountGroupInitialized = true;
        await isar.appModels.put(appModel);
      }
    });
  }
}
