import 'package:flutter/material.dart';
import 'package:my_spending/add_transaction/ui/add_transaction_text_field.dart';

class SingleTransactionAdd extends StatelessWidget {
  const SingleTransactionAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            decoration: BoxDecoration(
              // border: Border.all(color: lightTealColor(),width: 2.5),
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 3,
                  blurRadius: 6,
                  offset: Offset(0, 4),
                  // blurStyle: BlurStyle.inner
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddTransactionTextField(title: 'Date'),
                  SizedBox(height: 10),
                  AddTransactionTextField(title: 'Account'),

                  SizedBox(height: 10),
                  AddTransactionTextField(title: 'Category'),
                  SizedBox(height: 10),
                  AddTransactionTextField(title: 'Amount'),
                  SizedBox(height: 10),
                  AddTransactionTextField(title: 'Description (Optional)'),
                ],
              ),
            ),
          ),
        ),

        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Save', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ), // Set the border radius here
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('More', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ), // Set the border radius here
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
