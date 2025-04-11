import 'package:go_router/go_router.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_account_group/model/add_account_group_state_model.dart';
import 'package:my_spending/add_account_group/repository/isar_add_account_group_repository.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/route/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_account_group_state.g.dart';

@riverpod
class AddAccountGroupState extends _$AddAccountGroupState {
  @override
  AddAccountGroupStateModel build() {
    return AddAccountGroupStateModel(groupName: '');
  }

  void updateValue(String value) {
    state = state.copyWith(groupName: value);
  }

  void updateSaveButtonPressedStatus() {
    state = state.copyWith(isSaveButtonPressed: true);
  }

  Future<void> addAccountGroup() async {
    try {
      state = state.copyWith(isLoading: true);
      IsarAddAccountGroupRepository isarAddAccountGroupRepository =
          IsarAddAccountGroupRepository();
      DateTime now = DateTime.now();
      await isarAddAccountGroupRepository.addAccountGroup(
        accountGroupModel: AccountGroupModel(
          groupName: state.groupName,
          groupId: generateDatabaseId(now),
          dateCreated: now,
        ),
      );
      navigatorKey.currentContext?.pop();
    } on Exception catch (e) {
      print(e);
    } finally {
      state = state.copyWith(isLoading: null);
    }
  }
}
