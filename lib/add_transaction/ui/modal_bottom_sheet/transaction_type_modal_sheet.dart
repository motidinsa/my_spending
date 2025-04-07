import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/provider/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/modal_items.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/widget_size.dart';

class TransactionTypeModalSheet extends StatelessWidget {
  const TransactionTypeModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: const Text(
                    'Select Subcategory',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Column(
                    children: [
                      Icon(Icons.edit, color: Colors.grey.shade600),
                      // SizedBox(height: 5),
                      // Text(
                      //   'Edit',
                      //   style: TextStyle(color: Colors.grey.shade700),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Consumer(
              builder:
                  (context, ref, child) => WidgetSize(
                    onChange: (Size size) {
                      ref
                          .read(addTransactionStateProvider.notifier)
                          .updateSubcategoryHeight(
                            size.height,
                            MediaQuery.of(context).size.height,
                          );
                    },
                    child: SizedBox(
                      height: ref.watch(
                        addTransactionStateProvider.select(
                          (state) => state.modalHeight,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: ModalItems(isPrimary: true)),
                          const SizedBox(width: 10),
                          Expanded(child: ModalItems(isPrimary: false)),
                        ],
                      ),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}


