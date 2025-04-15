import 'package:my_spending/add_account_group/model/account_group_model.dart';

abstract class AccountsRepository{
  String? getAccountGroupName(String accountGroupId);
  void updateAccountGroupSortIndex(List<AccountGroupModel> accountGroupModels);
}