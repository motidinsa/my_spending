import 'package:flutter/material.dart';
import 'package:my_spending/core/model/transaction_model/transaction_model.dart';
import 'package:my_spending/homepage/functions/homepage_functions.dart';

class MiniTransactionDetail extends StatelessWidget {
  final TransactionModel transactionModel;

  const MiniTransactionDetail({super.key, required this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: .3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getCardPadding(
            description: transactionModel.description,
            subcategory: transactionModel.subcategoryName,
          ),horizontal: 5
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Text(
                        transactionModel.categoryName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      if (transactionModel.subcategoryName != null) ...[
                        SizedBox(height: 2),
                        Text(
                          transactionModel.subcategoryName!,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Text(
                    transactionModel.accountName,
                    style: TextStyle(color: Colors.grey.shade800),textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Icon(Icons.attach_money_rounded,size: 22,
                        color: Colors.grey.shade800,),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          transactionModel.amount.toString(),
                          style: TextStyle(color: Colors.grey.shade800),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(: 10),
              ],
            ),
            if (transactionModel.description != null) ...[
              SizedBox(
                height: transactionModel.subcategoryName != null ? 2 : 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  transactionModel.description!,
                  style: TextStyle(color: Colors.grey.shade600),textAlign: TextAlign.center,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
