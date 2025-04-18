import 'package:flutter/material.dart';
import 'package:my_spending/core/model/transaction_model/transaction_model.dart';

double getCardPadding({String? description, String? subcategory}) {
  if (description == null && subcategory == null) {
    return 15;
  } else if ((description == null && subcategory != null)
     ) {
    return 8;
  }else if (description != null && subcategory == null){
    return 10;
  }
  return 5;
}

List<List<TransactionModel>> getGroupedTransaction(List<TransactionModel> transactions){
  final Map<DateTime, List<TransactionModel>> groupedTransactions = {};
  for (final transaction in transactions) {
    final date = DateUtils.dateOnly(transaction.date);
    groupedTransactions.putIfAbsent(date, () => []).add(transaction);
  }
 return groupedTransactions.values.toList();

}