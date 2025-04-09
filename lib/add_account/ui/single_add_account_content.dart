import 'package:flutter/material.dart';
import 'package:my_spending/add_account/ui/add_account_text_field.dart';

class SingleAddAccountContent extends StatelessWidget {
  final String title;

  const SingleAddAccountContent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2, bottom: 5),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.green.shade800,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        AddAccountTextField(title: title),
      ],
    );
  }
}
