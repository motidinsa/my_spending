import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_transaction/repository/isar_add_transaction_repository.dart';
import 'package:my_spending/add_transaction/state/add_transaction_other_state.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/single_modal_item.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/ungrouped_account_list.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';

class AccountGroupListSelect extends StatelessWidget {
  const AccountGroupListSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.green.shade200, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          color: Colors.transparent,
          child: ListView(
            shrinkWrap: true,
            children: [
              Consumer(
                builder: (context, ref, child) {
                  return ref
                      .watch(addTransactionOtherStateProvider)
                      .when(
                        data: (data) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return data.accountGroupModels[index].groupId !=
                                      null
                                  ? SingleModalItem(
                                    name:
                                        data
                                            .accountGroupModels[index]
                                            .groupName,
                                    index: index,
                                    hasSubItem: true,
                                    id: data.accountGroupModels[index].groupId!,
                                    type: LocaleKeys.account,
                                    isSelected:
                                        data
                                            .accountGroupModels[index]
                                            .groupId ==
                                        ref.watch(
                                          addTransactionStateProvider.select(
                                            (state) => state.selectedId,
                                          ),
                                        ),
                                  )
                                  : UngroupedAccountList(
                                    accountModels:
                                        IsarAddTransactionRepository()
                                            .getAccountModels(
                                              data
                                                  .accountGroupModels[index]
                                                  .groupId,
                                            ),
                                  );
                            },

                            itemCount: data.accountGroupModels.length,
                          );
                        },
                        error:
                            (Object error, StackTrace stackTrace) =>
                                Text(error.toString()),
                        loading:
                            () => Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(
                                  color: Colors.green.shade700,
                                  strokeWidth: 3,
                                ),
                              ),
                            ),
                      );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
