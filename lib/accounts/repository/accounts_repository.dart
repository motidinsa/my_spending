import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/core/model/account_model.dart';

abstract class AccountsRepository {
  String? getAccountGroupName(String accountGroupId);

  void updateAccountGroupSortIndex(List<AccountGroupModel> accountGroupModels);

  AccountGroupModel? getAccountGroupModel(String groupId);

  int? getAccountGroupSortIndex(String groupId);

  Future<List<AccountModel>> getAllAccountLists();
}
