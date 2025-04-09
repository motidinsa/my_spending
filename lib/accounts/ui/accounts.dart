import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/accounts/ui/item_select.dart';
import 'package:my_spending/accounts/ui/item_type.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        heroTag: null,
        onPressed: () {
          context.push('/add_transaction');
        },
        label: Text('Add account group', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green.shade400,
      ),
      appBar: AppBar(
        title: Text('Accounts'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 10,),
          ItemType(
            title: 'salesN',
            addItemName: 'customerNiufer erfuier',
            detailPageName: 'salesN',
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ItemSelect(
              title: 'addItemName',
              iconData: Icons.add,
            ),
          ),
          // ListTile(
          //   title: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     child: Text('Transport'),
          //   ),
          //   onTap: () {},
          //   subtitle: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     child: Text('3 sub accounts'),
          //   ),
          // ),
          // ListTile(title: Text('Food'), onTap: () {}),
          // ListTile(title: Text('Electronics'), onTap: () {}),
          // ListTile(title: Text('Other'), onTap: () {}),
        ],
      ),
    );
  }
}
