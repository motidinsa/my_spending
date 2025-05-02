import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/repository/isar_add_transaction_repository.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/ungrouped_account_list.dart';

class SubAccountListSelect extends StatelessWidget {
  const SubAccountListSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        String? selectedId = ref.watch(
          addTransactionStateProvider.select(
                (state) => state.selectedId,
          ),
        );
        IsarAddTransactionRepository
        isarAddTransactionRepository =
        IsarAddTransactionRepository();
        return UngroupedAccountList(
          accountModels:
          selectedId != null
              ? isarAddTransactionRepository
              .getAccountModels(selectedId)
              : [],
          parentName:
          selectedId != null
              ? isarAddTransactionRepository
              .getAccountGroupName(selectedId)
              : null,
        );
      },
    );
  }
}
