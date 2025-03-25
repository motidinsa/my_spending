import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/core/model/transaction_model.dart';
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
        // side: BorderSide(color: Colors.grey,width: .3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getCardPadding(
            description: transactionModel.description,
            subcategory: transactionModel.subcategoryName,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
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

                Text(
                  transactionModel.accountName,
                  style: TextStyle(color: Colors.grey.shade800),
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.dollarSign,
                      size: 18,
                      color: Colors.grey.shade800,
                    ),
                    SizedBox(width: 10),
                    Text(
                      transactionModel.amount.toString(),
                      style: TextStyle(color: Colors.grey.shade800),
                    ),
                  ],
                ),
                // SizedBox(: 10),
              ],
            ),
            if (transactionModel.description != null) ...[
              SizedBox(
                height: transactionModel.subcategoryName != null ? 2 : 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.pen,
                    size: 14,
                    color: Colors.grey.shade600,
                  ),
                  SizedBox(width: 15),
                  Text(
                    transactionModel.description!,
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
