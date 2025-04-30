import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_transaction/repository/isar_add_transaction_repository.dart';
import 'package:my_spending/add_transaction/state/add_transaction_account_list_state.dart';
import 'package:my_spending/add_transaction/state/add_transaction_category_list_state.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/single_modal_item.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/ungrouped_account_list.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';

class CategoryListSelect extends StatelessWidget {
  const CategoryListSelect({super.key});

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
                      .watch(addTransactionCategoryListStateProvider)
                      .when(
                        data: (data) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return data[index].groupId != null
                                  ? SingleModalItem(
                                    name: data[index].groupName,
                                    index: index,
                                    hasSubItem: true,
                                    id: data[index].groupId!,
                                    type: LocaleKeys.account,
                                    isSelected:
                                        data[index].groupId ==
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
                                              data[index].groupId,
                                            ),
                                  );
                            },

                            itemCount: data.length,
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
