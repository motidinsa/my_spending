import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account/functions/add_account_functions.dart';
import 'package:my_spending/add_transaction/functions/add_transaction_functions.dart';

class AddAccountTextField extends StatefulWidget {
  final String title;
  final String? labelText;

  const AddAccountTextField({
    super.key,
    required this.title,
    this.labelText,
  });

  @override
  State<AddAccountTextField> createState() =>
      _AddAccountTextFieldState();
}

class _AddAccountTextFieldState extends State<AddAccountTextField> {
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
          keyboardType: getAddTransactionTextFieldKeyBoardType(widget.title),
          onTap:
              () => onAddAccountTextFieldPressed(
                context: context,
                ref: ref,
                title: widget.title,
              ),
          onChanged: (text) =>onAddAccountTextFieldChange(ref:ref,text: text,title: widget.title),
          readOnly: isReadOnlyAddAccountTextField(widget.title),
          decoration: InputDecoration(
            labelText: getLabelText(widget.title),
            contentPadding: EdgeInsets.fromLTRB(15, 20, 12, 12),
            suffixIcon: getAddAccountTextFieldIcon(widget.title),
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
