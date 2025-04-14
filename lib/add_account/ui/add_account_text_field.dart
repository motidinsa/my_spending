import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account/functions/add_account_functions.dart';
import 'package:my_spending/add_account/functions/add_account_validations.dart';

class AddAccountTextField extends StatefulWidget {
  final String title;
  final String? hintText;

  const AddAccountTextField({super.key, required this.title, this.hintText});

  @override
  State<AddAccountTextField> createState() => _AddAccountTextFieldState();
}

class _AddAccountTextFieldState extends State<AddAccountTextField> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        textEditingController.text = getAddAccountTextFieldData(
          ref,
          widget.title,
        );
        if (hasAddAccountTextFieldFocus(ref, widget.title)) {
          focusNode.requestFocus();
        }
        return TextFormField(
          controller: textEditingController,
          focusNode: focusNode,
          keyboardType: getAddTransactionTextFieldKeyBoardType(widget.title),
          textInputAction:
              widget.title == 'Description'
                  ? TextInputAction.done
                  : TextInputAction.next,
          onTap:
              () => onAddAccountTextFieldPressed(
                context: context,
                ref: ref,
                title: widget.title,
              ),
          onChanged:
              (text) => onAddAccountTextFieldChange(
                ref: ref,
                text: text,
                title: widget.title,
              ),
          readOnly: isReadOnlyAddAccountTextField(widget.title),
          decoration: InputDecoration(
            hintText: getAddAccountHintText(widget.title),
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
          validator:
              (value) => validateAddAccountTextField(value ?? '', widget.title),
        );
      },
    );
  }
}
