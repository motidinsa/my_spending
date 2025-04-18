import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/ui/single_transaction_add.dart';
import 'package:my_spending/add_transaction/ui/transaction_type_select.dart';

class AddTransaction extends ConsumerWidget {
  const AddTransaction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add transaction',
          style: TextStyle(
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          TransactionTypeSelect(),
          SizedBox(height: 10),
          SingleTransactionAdd(),
        ],
      ),
    );
  }
}
