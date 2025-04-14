import 'package:isar/isar.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/model/account_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'accounts_state.g.dart';

@riverpod
class AccountsState extends _$AccountsState {
  @override
  Stream<List<AccountModel>> build() async* {
    final isar = locator<Isar>();
    yield* isar.accountModels.where().watch(fireImmediately: true);
  }
}
