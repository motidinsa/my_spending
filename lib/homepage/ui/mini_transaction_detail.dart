import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MiniTransactionDetail extends StatelessWidget {
  const MiniTransactionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'category',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'subcategory',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade600,
                      ),
                    ),
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
                      'account',
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
                      'amount',
                      style: TextStyle(color: Colors.grey.shade800),
                    ),
                  ],
                ),
                // SizedBox(: 10),
              ],
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
                  'some description here',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
