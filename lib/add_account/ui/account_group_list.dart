import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account/state/add_account_state.dart';
import 'package:my_spending/add_account/ui/empty_account_group.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/add_account_group/repository/isar_add_account_group_repository.dart';
import 'package:my_spending/add_account_group/ui/single_account_group.dart';

class AccountGroupList extends ConsumerWidget {
  const AccountGroupList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(addAccountStateProvider.notifier).getAccountGroups();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            'Select account group',
            style: TextStyle(
              fontSize: 18,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Consumer(
            builder: (context, ref, child) {
              if (ref.watch(addAccountStateProvider).isAccountGroupsLoading ==
                  true) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.green,
                    strokeWidth: 3,
                  ),
                );
              } else if (ref
                      .watch(addAccountStateProvider)
                      .accountGroupModels !=
                  null) {
                // if(ref.watch(addAccountStateProvider).accountGroupModels!.isNotEmpty){
                return ref
                        .watch(addAccountStateProvider)
                        .accountGroupModels!
                        .isNotEmpty
                    ? ListView.builder(
                      itemBuilder:
                          (context, index) => SingleAccountGroup(
                            name: snapshot.data![index].groupName,
                          ),
                      itemCount: snapshot.data!.length,
                    )
                    : Center(
                      child: ListView(
                        shrinkWrap: true,
                        children: [EmptyAccountGroup()],
                      ),
                    );
                // }
              }
            },
          ),
          // StreamBuilder<List<AccountGroupModel>>(
          //   stream: isarAddAccountGroupRepository.listenAccountGroups(),
          //   builder: (context, snapshot) {
          //     if(snapshot.hasData){
          //       return snapshot.data!.isNotEmpty
          //           ? ListView.builder(
          //         itemBuilder:
          //             (context, index) => SingleAccountGroup(
          //           name: snapshot.data![index].groupName,
          //         ),
          //         itemCount: snapshot.data!.length,
          //       )
          //           : Center(
          //         child: ListView(
          //           shrinkWrap: true,
          //           children: [
          //             EmptyAccountGroup(),
          //           ],
          //         ),
          //       );
          //     }
          //     return Center(child: CircularProgressIndicator(color: Colors.green,strokeWidth: 3,));
          //
          //   },
          // ),
        ),
      ],
    );
  }
}
