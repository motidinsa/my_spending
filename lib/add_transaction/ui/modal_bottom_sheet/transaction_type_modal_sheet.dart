import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account/ui/account_group_list.dart';
import 'package:my_spending/add_transaction/repository/isar_add_transaction_repository.dart';
import 'package:my_spending/add_transaction/state/add_transaction_other_state.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/account_group_list_select.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/modal_items.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/ungrouped_account_list.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

class TransactionTypeModalSheet extends StatelessWidget {
  final String redirectFrom;

  const TransactionTypeModalSheet({super.key, required this.redirectFrom});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child:  Text(
                    redirectFrom == LocaleKeys.account
                        ? context.tr(LocaleKeys.selectAccount)
                        : context.tr(LocaleKeys.selectCategory),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    context.tr(LocaleKeys.edit),
                    style: TextStyle(color: Colors.green.shade500),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Consumer(
                builder: (context, ref, child) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: AccountGroupListSelect(),
                        // ModalItems(
                        //   isPrimary: true,
                        //   type: redirectFrom,
                        //   categoryModels:
                        //       redirectFrom == 'Category'
                        //           ? ref
                        //               .read(addTransactionStateProvider)
                        //               .categoryModels
                        //           : null,
                        //   accountModels:
                        //       redirectFrom == 'Account'
                        //           ? ref
                        //               .read(addTransactionStateProvider)
                        //               .accountModels
                        //           : null,
                        // ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Consumer(
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
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
