import 'package:flutter/material.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/modal_item.dart';

class TransactionTypeModalSheet extends StatelessWidget {
  const TransactionTypeModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                ModalItem(name: 'Cash'),
                ModalItem(name: 'Cash'),
                ModalItem(name: 'Cash'),
                ModalItem(name: 'Cash'),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              ModalItem(name: 'Cash'),
              ModalItem(name: 'Cash'),
              ModalItem(name: 'Cash'),
              ModalItem(name: 'Cash'),
            ],
          ),
        ),
      ],
    );
  }
}
