import 'package:flutter/material.dart';
import 'package:my_spending/core/model/transaction_model.dart';
import 'package:my_spending/homepage/ui/mini_transaction_detail.dart';

class GroupedTransactions extends StatelessWidget {
  final List<TransactionModel> transactions;

  const GroupedTransactions({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        // side: BorderSide(color: Colors.green, width: .5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder:
              (context, index) =>
                  MiniTransactionDetail(transactionModel: transactions[index]),
          itemCount: transactions.length,
        ),
      ),
    );
  }
}
