import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/add_transaction/functions/add_transaction_functions.dart';
import 'package:my_spending/add_transaction/provider/add_transaction_state.dart';

class SingleTransactionType extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color foregroundColor;

  const SingleTransactionType({
    super.key,
    required this.icon,
    required this.name,
    required this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return GestureDetector(
          onTap: () {
            onTransactionTypeSelect(ref: ref, type: name);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
              color: getTransactionTypeBackgroundColor(
                selectedType: ref.watch(
                  addTransactionStateProvider.select(
                    (state) => state.transactionType,
                  ),
                ),
                initialType: name,
              ),
              borderRadius: getTransactionSelectBorderRadius(name),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(icon, color: foregroundColor),
                SizedBox(height: 3),
                Text(name, style: TextStyle(color: foregroundColor)),
              ],
            ),
          ),
        );
      },
    );
  }
}
