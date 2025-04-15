import 'package:isar/isar.dart';
import 'package:my_spending/accounts/functions/accounts_function.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/account_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'accounts_state.g.dart';

@riverpod
class AccountsState extends _$AccountsState {
  @override
  FutureOr<List<List<AccountModel>>> build() async {
    final isar = locator<Isar>();
    return getGroupedAccounts(await isar.accountModels.where().findAll());
  }

  void reorderAccounts(int oldIndex, int newIndex) {
    final item = state.value?.removeAt(oldIndex);
    state.value?.insert(newIndex, item!);
    state = AsyncData(state.value!);
  }
}
