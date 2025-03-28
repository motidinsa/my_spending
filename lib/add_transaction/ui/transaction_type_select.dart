import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/add_transaction/ui/single_transaction_type.dart';

class TransactionTypeSelect extends StatelessWidget {
  const TransactionTypeSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green, width: .5),
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: SingleTransactionType(
                name: 'Expense',
                icon: FontAwesomeIcons.arrowDown,
                backgroundColor: Colors.red.shade100,
                // backgroundColor: Colors.white,
                foregroundColor: Colors.red.shade900,
              ),
            ),
            Expanded(
              child: SingleTransactionType(
                name: 'Income',
                icon: FontAwesomeIcons.arrowUp,
                // backgroundColor: Colors.green.shade100,
                backgroundColor: Colors.white,
                foregroundColor: Colors.green.shade900,
              ),
            ),

            Expanded(
              child:SingleTransactionType(
                name: 'Transfer',
                icon: FontAwesomeIcons.rotate,
                // backgroundColor: Colors.grey.shade200,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade800,
              )
            ),
          ],
        ),
      ),
    );
  }
}
