import 'package:flutter/material.dart';
import 'package:my_spending/add_transaction/functions/add_transaction_functions.dart';

class AddTransactionTextField extends StatefulWidget {
  final String title;
  const AddTransactionTextField({super.key,required this.title});

  @override
  State<AddTransactionTextField> createState() => _AddTransactionTextFieldState();
}

class _AddTransactionTextFieldState extends State<AddTransactionTextField> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2,bottom: 5),
          child: Text(
            widget.title,
            style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(15, 20, 12, 12),
            suffixIcon: getTextFieldIcon(widget.title),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: .6),
              borderRadius: BorderRadius.circular(10),
            ),focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
