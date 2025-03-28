import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/add_transaction/functions/add_transaction_functions.dart';

class SingleTransactionType extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;

  const SingleTransactionType({
    super.key,
    required this.icon,
    required this.name,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: getTransactionSelectBorderRadius(name),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(icon, color: foregroundColor),
          SizedBox(height: 3),
          Text(name, style: TextStyle(color: foregroundColor)),
        ],
      ),
    );
  }
}
