import 'package:flutter/material.dart';
import 'package:my_spending/add_account/ui/empty_account_group.dart';
import 'package:my_spending/add_account_group/ui/single_account_group.dart';

class AccountGroupList extends StatelessWidget {
  const AccountGroupList({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                EmptyAccountGroup(),

                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name bdb bt'),
                // SingleAccountGroup(name: 'tbtyhy 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
                // SingleAccountGroup(name: 'name 1'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
