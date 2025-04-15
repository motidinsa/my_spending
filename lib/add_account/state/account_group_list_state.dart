import 'package:isar/isar.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_group_list_state.g.dart';

@riverpod
class AccountGroupListState extends _$AccountGroupListState {
  @override
  Stream<List<AccountGroupModel>> build() async* {
    final isar = locator<Isar>();
    yield* isar.accountGroupModels
        .filter()
        .not()
        .groupIdEqualTo(null)
        .sortByDateCreatedDesc()
        .watch(fireImmediately: true);
  }
}
