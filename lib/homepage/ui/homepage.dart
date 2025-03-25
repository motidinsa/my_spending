import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:my_spending/core/model/transaction_model.dart';
import 'package:my_spending/homepage/ui/mini_transaction_detail.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  DateTime parseDate(DateTime givenDate, {bool? ignoreTimeAdd}) {
    late DateTime date;
    if (ignoreTimeAdd == null) {
      date = givenDate.toUtc().add(Duration(hours: 3));
    } else {
      date = givenDate;
    }

    return DateTime(
      date.year,
      date.month,
      date.day,
      date.hour,
      date.minute,
      date.second,
      date.millisecond,
    );
  }

  List<TransactionModel> tr = [
    TransactionModel(
      categoryName: 'categoryName',
      subcategoryName: 'subcategoryName',
      accountName: 'accountName',
      amount: 200,
      date: DateTime.now(),
    ),
    TransactionModel(
      categoryName: 'categoryName',
      subcategoryName: 'subcategoryName',
      accountName: 'accountName',
      amount: 200,
      date: DateTime.now(),
    ),

    TransactionModel(
      categoryName: 'categoryName',
      subcategoryName: 'subcategoryName',
      accountName: 'accountName',
      amount: 200,
      date: DateTime(2024),
    ),
    TransactionModel(
      categoryName: 'categoryName',
      subcategoryName: 'subcategoryName',
      accountName: 'accountName',
      amount: 200,
      date: DateTime(2024),
    ),TransactionModel(
      categoryName: 'categoryName',
      subcategoryName: 'subcategoryName',
      accountName: 'accountName',
      amount: 200,
      date: DateTime(2023),
    ),TransactionModel(
      categoryName: 'categoryName',
      subcategoryName: 'subcategoryName',
      accountName: 'accountName',
      amount: 200,
      date: DateTime(2023),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GroupedListView<TransactionModel, DateTime>(
      elements: tr,

      groupBy: (element) => DateUtils.dateOnly(element.date),
      separator: const SizedBox(height: 3),
      groupSeparatorBuilder:
          (DateTime groupByValue) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(groupByValue.toString()),
          ),addSemanticIndexes: true,
      // itemBuilder: (context, element) => MiniTransactionDetail(transactionModel: element),
      groupItemBuilder: (context, elements,_,_) {
        // final date = elements.date;
        // Get the date of the first element
        // print(elements);
        // final group = tr.where((e) => DateUtils.isSameDay(e.date, elements.date)).toList();
        // return GroupCard(transactions: group);
        return Card(
          // key: ValueKey(DateUtils.dateOnly(date)),
          color: Colors.green,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: MiniTransactionDetail(transactionModel: elements),
        );
      },
      // itemBuilder:
      //     (context, element) {
      //       final group = tr.where((e) => DateUtils.isSameDay(e.date, element.date)).toList();
      //       return GroupCard(transactions: group);
      //     },
              // MiniTransactionDetail(transactionModel: element),
      // itemComparator:
      //     (item1, item2) => parseDate(
      //       item1.date,
      //       ignoreTimeAdd: true,
      //     ).compareTo(parseDate(item2.date, ignoreTimeAdd: true)),
      groupComparator:   (item1, item2) => parseDate(
        item1,
        ignoreTimeAdd: true,
      ).compareTo(parseDate(item2, ignoreTimeAdd: true)),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      order: GroupedListOrder.DESC, // optional
    );
  }
}
class GroupCard extends StatelessWidget {
  final List<TransactionModel> transactions;

  const GroupCard({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: transactions.map((transaction) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: MiniTransactionDetail(transactionModel: transaction),
            );
          }).toList(),
        ),
      ),
    );
  }
}