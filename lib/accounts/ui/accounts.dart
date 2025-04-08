import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.go('/accounts/add_transaction');
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.green.shade200, width: .8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: .5,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Transport'),
                ),
                onTap: () {},
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('3 sub accounts'),
                ),
              ),
              ListTile(title: Text('Food'), onTap: () {}),
              ListTile(title: Text('Electronics'), onTap: () {}),
              ListTile(title: Text('Other'), onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
