import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/repository/isar_add_transaction_repository.dart';
import 'package:my_spending/add_transaction/state/add_transaction_account_list_state.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/single_modal_item.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/ungrouped_account_list.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

class AccountGroupListSelect extends StatelessWidget {
  final String type;

  const AccountGroupListSelect({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final addTransactionNotifier = ref.watch(
          addTransactionStateProvider.notifier,
        );

        return ref
            .watch(addTransactionAccountListStateProvider)
            .when(
              data: (data) {
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
                      child: ListView.builder(
                        shrinkWrap: true,
                        // physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return data[index].groupId != null
                              ? SingleModalItem(
                                name: data[index].groupName,
                                hasSubItem: true,
                                id: data[index].groupId!,
                                type: type,
                                isSelected:
                                    data[index].groupId ==
                                    ref.watch(
                                      addTransactionStateProvider.select(
                                        (state) => state.selectedId,
                                      ),
                                    ),
                              )
                              : FutureBuilder(
                                future: IsarAddTransactionRepository()
                                    .getAccountModels(data[index].groupId),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    if (type == LocaleKeys.to &&
                                        addTransactionNotifier
                                                .fromAccountId !=
                                            null) {
                                      snapshot.data!.removeWhere(
                                        (value) =>
                                            value.accountId ==
                                            addTransactionNotifier
                                                .fromAccountId,
                                      );
                                    } else if (type == LocaleKeys.from &&
                                        addTransactionNotifier
                                                .toAccountId !=
                                            null) {
                                      snapshot.data!.removeWhere(
                                        (value) =>
                                            value.accountId ==
                                            addTransactionNotifier
                                                .toAccountId,
                                      );
                                    }
                                    return UngroupedAccountList(
                                      type: type,
                                      accountModels: snapshot.data!,
                                    );
                                  }
                                  return Container();
                                },
                              );
                        },

                        itemCount: data.length,
                      ),
                    ),
                  ),
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
    );
  }
}
