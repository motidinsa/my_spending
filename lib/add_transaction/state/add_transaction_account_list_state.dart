import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_transaction/repository/isar_add_transaction_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_transaction_account_list_state.g.dart';

@riverpod
class AddTransactionAccountListState extends _$AddTransactionAccountListState {
  IsarAddTransactionRepository isarAddTransactionRepository =
      IsarAddTransactionRepository();

  @override
  Future<List<AccountGroupModel>> build() async {
    return await isarAddTransactionRepository.getAllAccountGroups();
  }
}
