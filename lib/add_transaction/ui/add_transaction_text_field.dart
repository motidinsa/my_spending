import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    return Consumer(
      builder: (context, ref, child) {
        textEditingController.text = getData(ref, widget.title);
        return TextFormField(
          controller: textEditingController,
          onTap:
              () => onAddTransactionTextFieldPressed(
                context: context,
                ref: ref,
                title: widget.title,
              ),
          onChanged: (text) =>onAddTransactionTextFieldChange(ref:ref,text: text,title: widget.title),
          readOnly: isReadOnlyAddTransactionTextField(widget.title),
          decoration: InputDecoration(
            labelText: getLabelText(widget.title),
            hintText: getAddTransactionHintText(widget.title),
            contentPadding: EdgeInsets.fromLTRB(15, 20, 12, 12),
            suffixIcon: getAddTransactionTextFieldIcon(widget.title),
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
      },
    );
  }
}
