import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/accounts/ui/grouped_account_list.dart';
import 'package:my_spending/accounts/ui/mini_account_detail.dart';

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
        title: Text('Accounts' , style: TextStyle(
        color: Colors.green.shade800,
          fontWeight: FontWeight.bold,
        ),),
        // centerTitle: true,
        backgroundColor: Colors.white,
        actions: [ // Add the actions property
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: TextButton(
              onPressed: () {
               context.go('/accounts/add_account_group');
              },
              style: TextButton.styleFrom(   shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),),
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
      body: ListView(
        // shrinkWrap: true,
        children: [
          SizedBox(height: 10,),
          GroupedAccountList(
            title: 'salesN',
            addItemName: 'customerNiufer',
            detailPageName: 'salesN',
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: MiniAccountDetail(
              name: 'addItemName',
            ),
          ),
        ],
      ),
    );
  }
}
