import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/add_transaction/ui/single_transaction_add.dart';
import 'package:my_spending/add_transaction/ui/transaction_type_select.dart';

class AddTransaction extends StatelessWidget {
  const AddTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Add transaction'),),
      body: ListView(
        children: [
          TransactionTypeSelect(),
          SizedBox(height: 10,),
          SingleTransactionAdd()
        ],
      ),
    );
  }
}
