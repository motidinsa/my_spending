import 'package:flutter/material.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/model/account_model.dart';
// import 'package:smooth_corner/smooth_corner.dart';

class MiniAccountDetail extends StatelessWidget {
  final AccountModel accountModel;

  const MiniAccountDetail({super.key, required this.accountModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      shape: RoundedRectangleBorder(
        // side: BorderSide(color: Colors.green.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        tileColor: Colors.green.shade50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text(
                accountModel.accountName,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade800,
                  // fontSize: 17,
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Text(
                '\$ ${getFormattedNumberWithComa(accountModel.amountAvailable)}',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
