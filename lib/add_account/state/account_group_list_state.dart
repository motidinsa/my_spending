import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_account_group/repository/isar_add_account_group_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_group_list_state.g.dart';

@riverpod
class AccountGroupListState extends _$AccountGroupListState {
  @override
  Stream<List<AccountGroupModel>> build() {
    IsarAddAccountGroupRepository isarAddAccountGroupRepository =
        IsarAddAccountGroupRepository();
    return isarAddAccountGroupRepository.listenAccountGroups();
  }
  // Future<void> updateAccountGroupList(AccountGroupModel accountGroupModel) async {
  //   state =  const AsyncLoading();
  //   state = await AsyncValue.data([...state,accountGroupModel]);
  //
  //   // state = state.copyWith(accountGroupModels: [...state.accountGroupModels,accountGroupModel]);
  // }
}
