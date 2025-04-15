import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:my_spending/core/constants/color_constants.dart';
import 'package:my_spending/core/model/transaction_model.dart';
import 'package:my_spending/core/state/app_state.dart';
import 'package:my_spending/homepage/functions/homepage_functions.dart';
import 'package:my_spending/homepage/ui/daily_status_info.dart';
import 'package:my_spending/homepage/ui/grouped_transactions.dart';

class HomePage extends ConsumerWidget {
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

  // List<TransactionModel> tr = [
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     description: 'cudscv cbdsuics dcsdcusi',
  //     amount: 200000,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     // subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     // subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     description: 'adbcd wdwud dqwsoiwqdewd edwedweuid cdcbebcerucb',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime.now(),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName 0',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2024, 1, 1),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName 0',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2024, 1, 1),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName 0',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2024, 1, 1),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName 0',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2024, 1, 1),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName 0',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2024, 1, 1),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName 0',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2024, 1, 1),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName 0',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2024, 1, 1),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName 0',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2024, 1, 1),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName 0',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2024, 1, 1),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName 0',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2024, 1, 1),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName 1',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2024, 1, 1, 1),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2023),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2023),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2023),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2023),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2023),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2023),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2023),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2023),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2023),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2023),
  //   ),
  //   TransactionModel(
  //     categoryName: 'categoryName',
  //     subcategoryName: 'subcategoryName',
  //     accountName: 'accountName',
  //     amount: 200,
  //     date: DateTime(2023),
  //   ),
  // ];
  List<TransactionModel> tr = [];

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    ref.watch(appStateProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/add_transaction');
        },
        backgroundColor: green,
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: GroupedListView<List<TransactionModel>, DateTime>(
          elements: getGroupedTransaction(tr),
          groupBy: (element) => DateUtils.dateOnly(element.first.date),
          separator: const SizedBox(height: 10),
          padding: EdgeInsets.zero,
          groupSeparatorBuilder:
              (DateTime groupByValue) => DailyStatusInfo(date: groupByValue),
          useStickyGroupSeparators: true,
          stickyHeaderBackgroundColor: Colors.white,
          itemBuilder: (context, elements) {
            return GroupedTransactions(transactions: elements);
          },
          groupComparator:
              (item1, item2) => DateUtils.dateOnly(
                item1,
              ).compareTo(DateUtils.dateOnly(item2)),
          shrinkWrap: true,
          order: GroupedListOrder.DESC, // optional
        ),
      ),
    );
  }
}
