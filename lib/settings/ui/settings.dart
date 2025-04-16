import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                blurRadius: 3,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Material(
              color: Colors.transparent,
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(title: Text('Accounts'), onTap: () {}),
                  ListTile(
                    title: Text('Categories'),
                    onTap: () {
                      context.go('/settings/categories');
                    },
                  ),
                  ListTile(title: Text('Language'), onTap: () {}),
                  ListTile(title: Text('Theme'), onTap: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
