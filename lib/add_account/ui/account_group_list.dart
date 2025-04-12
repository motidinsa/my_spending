import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/add_account/state/account_group_list_state.dart';
import 'package:my_spending/add_account/ui/empty_account_group.dart';
import 'package:my_spending/add_account_group/ui/single_account_group.dart';

class AccountGroupList extends StatelessWidget {
  const AccountGroupList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              Spacer(),
              Expanded(
                flex: 4,
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
              Consumer(
                builder:
                    (context, ref, child) =>
                        ref.watch(
                              accountGroupListStateProvider.select(
                                (state) => state.value?.isNotEmpty ?? false,
                              ),
                            )
                            ? Expanded(
                              child: IconButton(
                                onPressed: () {
                                  context.push('/add_account_group');
                                },
                                icon: Icon(Icons.add, color: Colors.green),
                              ),
                            )
                            : Expanded(
                          child: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.add, color: Colors.transparent),
                          ),
                        ),
              ),
            ],
          ),
        ),
        Consumer(
          builder: (context,ref,child) {
            return Expanded(
              child: ref
                  .watch(accountGroupListStateProvider)
                  .when(
                    data:
                        (data) =>
                            data.isNotEmpty
                                ? ListView.builder(
                                  itemBuilder:
                                      (context, index) => SingleAccountGroup(
                                        name: data[index].groupName,
                                      ),
                                  itemCount: data.length,
                                )
                                : Center(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [EmptyAccountGroup()],
                                  ),
                                ),
                    error: (err, stack) => Text('Error: $err'),
                    loading:
                        () => Center(
                          child: CircularProgressIndicator(
                            color: Colors.green,
                            strokeWidth: 3,
                          ),
                        ),
                  ),
              // Consumer(
              //   builder: (context, ref, child) {
              //     if (ref.watch(addAccountStateProvider).isAccountGroupsLoading ==
              //         true) {
              //       return Center(
              //         child: CircularProgressIndicator(
              //           color: Colors.green,
              //           strokeWidth: 3,
              //         ),
              //       );
              //     } else if (ref
              //         .watch(addAccountStateProvider)
              //         .accountGroupModels
              //         .isNotEmpty) {
              //       // if(ref.watch(addAccountStateProvider).accountGroupModels!.isNotEmpty){
              //       return ListView.builder(
              //         itemBuilder:
              //             (context, index) => SingleAccountGroup(
              //               name: ref.watch(
              //                 addAccountStateProvider.select(
              //                   (state) =>
              //                       state.accountGroupModels[index].groupName,
              //                 ),
              //               ),
              //             ),
              //         itemCount: ref.watch(
              //           addAccountStateProvider.select(
              //             (state) => state.accountGroupModels.length,
              //           ),
              //         ),
              //       );
              //       // }
              //     }
              //     return Center(
              //       child: ListView(
              //         shrinkWrap: true,
              //         children: [EmptyAccountGroup()],
              //       ),
              //     );
              //   },
              // ),
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
            );
          }
        ),
      ],
    );
  }
}
