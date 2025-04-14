import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account/functions/add_account_functions.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';

class SingleAccountGroup extends StatelessWidget {
  final AccountGroupModel accountGroupModel;

  const SingleAccountGroup({super.key, required this.accountGroupModel});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context,ref,child) {
        return ListTile(
          title: Text(accountGroupModel.groupName, textAlign: TextAlign.center),
          onTap: () =>onSingleAccountGroupSelected(ref,accountGroupModel),
        );
      }
    );
  }
}
