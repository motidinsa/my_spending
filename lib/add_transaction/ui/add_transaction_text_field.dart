import 'package:flutter/material.dart';
import 'package:my_spending/add_transaction/functions/add_transaction_functions.dart';

class AddTransactionTextField extends StatefulWidget {
  final String title;
  final String? labelText;

  const AddTransactionTextField({
    super.key,
    required this.title,
    this.labelText,
  });

  @override
  State<AddTransactionTextField> createState() =>
      _AddTransactionTextFieldState();
}

class _AddTransactionTextFieldState extends State<AddTransactionTextField> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.text = getTextFieldData(widget.title) ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      readOnly: isReadOnlyTextField(widget.title),
      decoration: InputDecoration(
        labelText: getLabelText(widget.title),
        contentPadding: EdgeInsets.fromLTRB(15, 20, 12, 12),
        suffixIcon: getTextFieldIcon(widget.title),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: .6),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
