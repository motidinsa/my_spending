import 'package:flutter/material.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/single_modal_item.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';

class UngroupedAccountList extends StatelessWidget {
  final List<AccountModel> accountModels;
final String type;
  const UngroupedAccountList({super.key, required this.accountModels,required this.type});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return SingleModalItem(
          name: accountModels[index].accountName,
          type: type,
          id: accountModels[index].accountId,
          isSelected: false,
        );
      },

      itemCount: accountModels.length,
    );
  }
}
