import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account_group/functions/add_account_group_functions.dart';
import 'package:my_spending/add_account_group/functions/add_account_group_validations.dart';
import 'package:my_spending/add_account_group/state/add_account_group_state.dart';
import 'package:my_spending/core/state/app_state.dart';

class AddAccountGroupTextField extends StatefulWidget {
  const AddAccountGroupTextField({super.key});

  @override
  State<AddAccountGroupTextField> createState() =>
      _AddAccountGroupTextFieldState();
}

class _AddAccountGroupTextFieldState extends State<AddAccountGroupTextField> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Form(
          key: ref.watch(appStateProvider).formKey,
          autovalidateMode:
              ref.watch(
                        addAccountGroupStateProvider.select(
                          (state) => state.isSaveButtonPressed,
                        ),
                      ) ==
                      true
                  ? AutovalidateMode.always
                  : null,
          child: TextFormField(
            controller: textEditingController,
            focusNode: focusNode,
            onChanged:
                (text) =>
                    onAddAccountGroupTextFieldChange(ref: ref, text: text),

            decoration: InputDecoration(
              // labelText: getLabelText(widget.title),
              contentPadding: EdgeInsets.fromLTRB(15, 20, 12, 12),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: .6),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(10),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red,width: .6),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            validator:
                (value) => validateAddAccountGroupTextField(
                  textEditingController.text,
                ),
          ),
        );
      },
    );
  }
}
