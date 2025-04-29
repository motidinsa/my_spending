import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/ui/single_transaction_add.dart';
import 'package:my_spending/add_transaction/ui/transaction_type_select.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

class AddTransaction extends ConsumerWidget {
  const AddTransaction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          context.tr(LocaleKeys.addTransaction),
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
