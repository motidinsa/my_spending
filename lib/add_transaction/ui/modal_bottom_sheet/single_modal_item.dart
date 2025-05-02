import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';

class SingleModalItem extends StatelessWidget {
  final String name;
  final String type;
  final String id;
  final bool? hasSubItem;
  final bool isSelected;

  const SingleModalItem({
    super.key,
    required this.name,
    this.hasSubItem,
    required this.type,
    required this.id,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return ListTile(
          tileColor: isSelected ? Colors.green.shade100 : null,
          title: Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade800,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color:
                hasSubItem == true ? Colors.green.shade400 : Colors.transparent,
            size: 18,
          ),
          onTap: () {
            ref
                .read(addTransactionStateProvider.notifier)
                .onSingleModalItemPressed(
                  name: name,
                  type: type,
                  hasSubItem: hasSubItem ?? false,
                  id: id,
                  context: context,
                );
          },
        );
      },
    );
  }
}
