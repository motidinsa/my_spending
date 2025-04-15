import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/accounts/state/accounts_state.dart';
import 'package:my_spending/accounts/ui/grouped_account_list.dart';

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
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ReorderableListView.builder(
                        itemBuilder:
                            (context, index) => Padding(
                              key: ValueKey(index),
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 5,
                              ),
                              child: GroupedAccountList(
                                accountModels: data[index],
                              ),
                            ),
                        itemCount: data.length,
                        onReorder: (int oldIndex, int newIndex) {
                          if (newIndex > oldIndex) newIndex--;
                          ref
                              .read(accountsStateProvider.notifier)
                              .reorderAccounts(oldIndex, newIndex);
                        },
                        proxyDecorator: (child, index, animation) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  // spreadRadius: 10,
                                  blurRadius: 12,
                                  // offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: child, // The actual list item content
                          );
                        },
                      ),
                    ),
                error: (error, stack) => Text(error.toString()),
                loading: () => Center(child: CircularProgressIndicator()),
              );
        },
      ),
    );
  }
}
