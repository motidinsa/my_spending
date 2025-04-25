import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_subcategory/functions/add_subcategory_functions.dart';
import 'package:my_spending/add_subcategory/functions/add_subcategory_validations.dart';
import 'package:my_spending/add_subcategory/state/add_subcategory_state.dart';
import 'package:my_spending/core/constants/style_constants.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

class AddSubcategoryTextField extends StatefulWidget {
  final String title;
  final String? data;

  const AddSubcategoryTextField({super.key, required this.title, this.data});

  @override
  State<AddSubcategoryTextField> createState() =>
      _AddSubcategoryTextFieldState();
}

class _AddSubcategoryTextFieldState extends State<AddSubcategoryTextField> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        if (widget.title == LocaleKeys.category) {
          textEditingController.text = widget.data!;
        } else if (widget.title == LocaleKeys.name &&
            hasAddSubcategoryTextFieldFocus(ref, widget.title)) {
          focusNode.requestFocus();
        }

        return TextFormField(
          controller: textEditingController,
          focusNode: focusNode,
          onChanged:
              (text) => ref
                  .read(addSubcategoryStateProvider.notifier)
                  .updateSubcategoryName(text),
          readOnly: isAddSubcategoryTextFieldReadOnly(widget.title),
          decoration: getDefaultTextInputDecoration(),
          validator:
              (value) => validateSubcategoryName(textEditingController.text),
        );
      },
    );
  }
}
