import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/homepage/functions/homepage_functions.dart';

class MiniTransactionDetail extends StatelessWidget {
  final String categoryName;
  final String? subcategoryName;
  final String accountName;
  final double amount;
  final String? description;

  const MiniTransactionDetail({
    super.key,
    required this.categoryName,
    this.subcategoryName,
    required this.accountName,
    required this.amount,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getCardPadding(
            description: description,
            subcategory: subcategoryName,
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
                      categoryName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    if (subcategoryName != null) ...[
                      SizedBox(height: 2),
                      Text(
                        subcategoryName!,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ],
                ),

                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.coins,
                      size: 18,
                      color: Colors.grey.shade800,
                    ),
                    SizedBox(width: 10),
                    Text(
                      accountName,
                      style: TextStyle(color: Colors.grey.shade800),
                    ),
                  ],
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
                      amount.toString(),
                      style: TextStyle(color: Colors.grey.shade800),
                    ),
                  ],
                ),
                // SizedBox(: 10),
              ],
            ),
            if (description != null)...[
              SizedBox(height: subcategoryName!=null?2:5,),
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
                    description!,
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              )],
          ],
        ),
      ),
    );
  }
}
