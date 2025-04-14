import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account/functions/add_account_functions.dart';

class SingleAccountGroup extends StatelessWidget {
  final String name;

  const SingleAccountGroup({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context,ref,child) {
        return ListTile(
          title: Text(name, textAlign: TextAlign.center),
          onTap: () =>onSingleAccountGroupSelected(ref,name),
        );
      }
    );
  }
}
