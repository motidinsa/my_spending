import 'package:flutter/material.dart';
import 'package:my_spending/add_transaction/ui/add_transaction_text_field.dart';
import 'package:my_spending/add_transaction/ui/single_add_transaction_content.dart';

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
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.green.shade200, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SingleAddTransactionContent(title: 'Date'),
                  SizedBox(height: 10),
                  SingleAddTransactionContent(title: 'Account'),
                  SizedBox(height: 10),
                  SingleAddTransactionContent(title: 'Category'),
                  SizedBox(height: 10),
                  SingleAddTransactionContent(title: 'Amount'),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(child: AddTransactionTextField(title: 'Tip')),
                      SizedBox(width: 10),
                      Expanded(child: AddTransactionTextField(title: 'Fee')),
                      SizedBox(width: 10),

                      // Container(),
                      IconButton(onPressed: null, icon: Container()),
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleAddTransactionContent(title: 'Description (Optional)'),
                ],
              ),
            ),
          ),
        ),

        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('Save', style: TextStyle(color: Colors.green)),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.green, width: .5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ), // Set the border radius here
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('More', style: TextStyle(color: Colors.green)),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.green, width: .5),
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
