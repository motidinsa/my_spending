import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/single_modal_item.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';

class UngroupedAccountList extends StatelessWidget {
  final List<AccountModel> accountModels;

  const UngroupedAccountList({super.key, required this.accountModels});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return SingleModalItem(
          name: accountModels[index].accountName,
          index: index,
        );
      },

      itemCount: accountModels.length,
    );
  }
}
