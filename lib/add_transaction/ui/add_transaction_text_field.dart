import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/functions/add_transaction_functions.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/transaction_type_modal_sheet.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/functions/core_functions.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final addTransactionNotifier = ref.read(addTransactionStateProvider.notifier);
        focusNode.addListener(() {
          if (!focusNode.hasFocus) {
            addTransactionNotifier.removeAmountFocus();
          }
        });

        if (widget.title == LocaleKeys.amount &&
            ref.watch(
              addTransactionStateProvider.select(
                (state) => state.hasAmountFocus == true,
              ),
            )) {
          focusNode.requestFocus();
        }
        // if (widget.title == LocaleKeys.account &&
        //     !addTransactionNotifier.isInitDialogShown) {
        //   executeAfterBuild(() {
        //     addTransactionNotifier
        //         .setSelectedType(LocaleKeys.account);
        //
        //     showModalBottomSheet(
        //       context: context,
        //       backgroundColor: Colors.white,
        //       builder: (BuildContext context) {
        //         return TransactionTypeModalSheet(
        //           redirectFrom: LocaleKeys.account,
        //         );
        //       },
        //     ).then((value) {
        //       addTransactionNotifier.resetSelectedId();
        //       addTransactionNotifier.isInitDialogShown =
        //           true;
        //     });
        //   });
        // }
        textEditingController.text = getAddTransactionTextFieldData(
          ref,
          widget.title,
        );
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
