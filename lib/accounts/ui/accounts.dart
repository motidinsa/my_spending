import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:my_spending/accounts/functions/accounts_function.dart';
import 'package:my_spending/accounts/state/accounts_state.dart';
import 'package:my_spending/accounts/ui/grouped_account_list.dart';
import 'package:my_spending/core/model/account_model.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        heroTag: null,
        onPressed: () {
          context.push('/add_account');
        },
        label: Text('Add account', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green.shade400,
      ),
      appBar: AppBar(
        title: Text(
          'Accounts',
          style: TextStyle(
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
        // centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          // Add the actions property
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: TextButton(
              onPressed: () {
                context.go('/accounts/add_account_group');
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Add account group',
                style: TextStyle(
                  color: Colors.green.shade800, // Optional: Style the text
                  // fontSize: 16,
                ),
              ),
            ),
          ),
          // const SizedBox(width: 10), // Optional: Add some padding
        ],
      ),
      backgroundColor: Colors.white,
      body: Consumer(
        builder: (context, ref, child) {
          return ref
              .watch(accountsStateProvider)
              .when(
                data:
                    (data) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        color: Colors.transparent,
                        child: ReorderableListView.builder(
                          itemBuilder:
                              (context, index) => GroupedAccountList(
                                key: UniqueKey(),
                                accountModels: data[index],
                              ),
                          itemCount: data.length,
                          onReorder: (int oldIndex, int newIndex) {
                            // ref.read(accountsProvider.notifier).reorderAccounts(oldIndex, newIndex);
                          },
                          proxyDecorator: (child, index, animation) {
                            return Material(
                              elevation: 8, // Adjust elevation for shadow size
                              color: Colors.transparent, // Ensure transparent background
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.green.shade200, width: .5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade400,
                                      spreadRadius: 0.5,
                                      blurRadius: 2,
                                      // offset: const Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: child, // The actual list item content
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                //   GroupedListView<List<AccountModel>, DateTime>(
                // elements: getGroupedAccounts(data),
                // groupBy:
                //     (element) =>
                //         DateUtils.dateOnly(element.first.dateCreated),
                // separator: const SizedBox(height: 10),
                // padding: EdgeInsets.only(bottom: 20),
                // groupSeparatorBuilder: (value) => SizedBox(height: 5),
                // itemBuilder: (context, elements) {
                //   return GroupedAccountList(
                //     accountModels: elements,
                //   );
                // },
                // groupComparator:
                //     (item1, item2) =>
                //     DateUtils.dateOnly(
                //       item1,
                //     ).compareTo(DateUtils.dateOnly(item2)),
                // shrinkWrap: true,
                // ),
                error: (error, stack) => Text(error.toString()),
                loading: () => Center(child: CircularProgressIndicator()),
              );
        },
      ),
    );
  }
}
