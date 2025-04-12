import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/add_transaction_text_field.dart';

class SingleAddTransactionContent extends StatelessWidget {
  final String title;

  const SingleAddTransactionContent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2, bottom: 5),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.green.shade800,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        if (title == 'Amount') ...[
          Row(
            children: [
              Expanded(child: AddTransactionTextField(title: title)),
              SizedBox(width: 10),
              Consumer(
                builder: (context, ref, child) {
                  if (ref.watch(
                        addTransactionStateProvider.select(
                          (state) => state.isAmountAddButtonPressed,
                        ),
                      ) ==
                      true) {
                    return IconButton(onPressed: null, icon: Container());
                  }

                  return IconButton(
                    onPressed: () {
                      ref
                          .read(addTransactionStateProvider.notifier)
                          .onAddAmountIconPressed();
                    },
                    icon: Icon(Icons.add),
                  );
                },
              ),
            ],
          ),
        ] else
          AddTransactionTextField(title: title),
      ],
    );
  }
}
