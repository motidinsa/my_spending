import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account_group/functions/add_account_group_functions.dart';
import 'package:my_spending/add_account_group/functions/add_account_group_validations.dart';
import 'package:my_spending/add_account_group/state/add_account_group_state.dart';
import 'package:my_spending/core/constants/style_constants.dart';

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
        if (hasAddAccountGroupTextFieldFocus(ref)) {
          focusNode.requestFocus();
        }
        return Form(
          key: ref.watch(addAccountGroupStateProvider.notifier).formKey,
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
                    ref.read(addAccountGroupStateProvider.notifier).updateValue(text),

            decoration: getDefaultTextInputDecoration(),
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
