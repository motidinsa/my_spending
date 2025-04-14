import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/modal_items.dart';

class TransactionTypeModalSheet extends StatelessWidget {
  final String redirectFrom;

  const TransactionTypeModalSheet({super.key, required this.redirectFrom});

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
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.green.shade500),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Consumer(
              builder: (context, ref, child) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ModalItems(
                        isPrimary: true,
                        type: redirectFrom,
                        categoryModels:
                            redirectFrom == 'Category'
                                ? ref
                                    .read(addTransactionStateProvider)
                                    .categoryModels
                                : null,
                        accountModels:
                            redirectFrom == 'Account'
                                ? ref
                                    .read(addTransactionStateProvider)
                                    .accountModels
                                : null,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ModalItems(
                        isPrimary: false,
                        type: redirectFrom,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
