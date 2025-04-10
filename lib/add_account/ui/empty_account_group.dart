import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmptyAccountGroup extends StatelessWidget {
  const EmptyAccountGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'There is no account group available.',
          style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
        TextButton(
          onPressed: () {
            context.push('/add_account_group');
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Add account group',
            style: TextStyle(
              color: Colors.green.shade700,
              fontSize: 15, // Optional: Style the text
              // fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
