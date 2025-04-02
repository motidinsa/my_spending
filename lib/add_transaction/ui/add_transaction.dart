import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/add_transaction/provider/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/single_transaction_add.dart';
import 'package:my_spending/add_transaction/ui/transaction_type_select.dart';

class AddTransaction extends ConsumerWidget {
  const AddTransaction({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    // AddTransactionState addTransactionState = AddTransactionState();
    // addTransactionState.
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
