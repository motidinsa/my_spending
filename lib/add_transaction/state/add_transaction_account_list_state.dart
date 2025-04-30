import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_transaction/model/add_transaction_other_state_model.dart';
import 'package:my_spending/add_transaction/model/add_transaction_state_model.dart';
import 'package:my_spending/add_transaction/repository/isar_add_transaction_repository.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/transaction_model/transaction_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_transaction_account_list_state.g.dart';

@riverpod
class AddTransactionAccountListState extends _$AddTransactionAccountListState {
  IsarAddTransactionRepository isarAddTransactionRepository = IsarAddTransactionRepository();
  @override
  Future<List<AccountGroupModel>> build() async {

    return  await isarAddTransactionRepository.getAllAccountGroups();

  }

}
