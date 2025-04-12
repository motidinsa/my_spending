import 'package:my_spending/add_account/model/add_account_state_model.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_account_group/repository/isar_add_account_group_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_account_state.g.dart';

@riverpod
class AddAccountState extends _$AddAccountState {
  @override
  AddAccountStateModel build() {
    return AddAccountStateModel();
  }
 Future<void> getAccountGroups() async {
    state = state.copyWith(isAccountGroupsLoading: true);
    IsarAddAccountGroupRepository isarAddAccountGroupRepository = IsarAddAccountGroupRepository();
    List<AccountGroupModel> a = await isarAddAccountGroupRepository.getAllAccountGroups();
    state.copyWith(accountGroupModels: a);
 }
}
