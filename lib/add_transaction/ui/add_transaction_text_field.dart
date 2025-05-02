import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/functions/add_transaction_functions.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

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
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // textEditingController.text = getTextFieldData(widget.title) ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        textEditingController.text = getAddTransactionTextFieldData(
          ref,
          widget.title,
        );
        if (widget.title == LocaleKeys.amount &&
            ref.watch(
              addTransactionStateProvider.select(
                (state) => state.hasAmountFocus == true,
              ),
            )) {
          focusNode.requestFocus();
        }
        return TextFormField(
          controller: textEditingController,
          focusNode: focusNode,
          onTap:
              () => onAddTransactionTextFieldPressed(
                context: context,
                ref: ref,
                title: widget.title,
              ),
          onChanged:
              (text) => onAddTransactionTextFieldChange(
                ref: ref,
                text: text,
                title: widget.title,
              ),
          readOnly: isReadOnlyAddTransactionTextField(widget.title),
          keyboardType:
              widget.title == LocaleKeys.amount
                  ? TextInputType.number
                  : TextInputType.none,
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
