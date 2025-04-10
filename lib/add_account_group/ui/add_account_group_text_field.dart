import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account_group/functions/add_account_group_functions.dart';
import 'package:my_spending/add_account_group/functions/add_account_group_validations.dart';
import 'package:my_spending/add_account_group/provider/add_account_group_state.dart';
import 'package:my_spending/core/provider/app_state.dart';

class AddAccountGroupTextField extends StatefulWidget {
  const AddAccountGroupTextField({super.key});

  @override
  State<AddAccountGroupTextField> createState() =>
      _AddAccountGroupTextFieldState();
}

class _AddAccountGroupTextFieldState extends State<AddAccountGroupTextField> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Form(
          key: ref.watch(appStateProvider.notifier).formKey,
          autovalidateMode:
          ref.watch(addAccountGroupStateProvider).isSaveButtonPressed == true
              ? AutovalidateMode.always
              : null,
          child: TextFormField(
            controller: textEditingController,
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
