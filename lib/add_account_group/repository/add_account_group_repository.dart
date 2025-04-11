import 'package:my_spending/add_account_group/model/account_group_model.dart';

abstract class AddAccountGroupRepository {
  void addAccountGroup({
    required AccountGroupModel accountGroupModel,
  });
}
