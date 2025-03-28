import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

BorderRadius? getTransactionSelectBorderRadius(String name) {
  return BorderRadius.only(
    topLeft: name == 'Expense' ? Radius.circular(12) : Radius.zero,
    bottomLeft: name == 'Expense' ? Radius.circular(12) : Radius.zero,
    bottomRight: name == 'Transfer' ? Radius.circular(12) : Radius.zero,
    topRight: name == 'Transfer' ? Radius.circular(12) : Radius.zero,
  );
}

getTextFieldIcon(String title) {
  if (title == 'Date') {
    return Icon(Icons.date_range);
  } else if (title == 'Account') {
    return Icon(Icons.account_balance_rounded,);
  }
  else if (title == 'Category') {
    return Icon(Icons.list_alt_rounded);
  }
  else if (title == 'Amount') {
    return Icon(Icons.attach_money_rounded,);
  }
  else if (title == 'Description (Optional)') {
    return Icon(Icons.edit,color: Colors.grey.shade700,);
  }
}
