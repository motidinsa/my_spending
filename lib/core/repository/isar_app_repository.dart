import 'package:isar/isar.dart';
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
        await isar.accountGroupModels.put(
          AccountGroupModel(groupName: '', dateCreated: DateTime.now()),
        );
        await isar.appModels.put(
          AppModel(isDefaultAccountGroupInitialized: true),
        );
      }
    });
  }
}
