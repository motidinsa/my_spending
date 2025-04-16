import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account/functions/add_account_functions.dart';
import 'package:my_spending/add_account/functions/add_account_validations.dart';
import 'package:my_spending/core/functions/core_functions.dart';

class AddCategoryTextField extends StatefulWidget {
  final String title;
  final String? hintText;

  const AddCategoryTextField({super.key, required this.title, this.hintText});

  @override
  State<AddCategoryTextField> createState() => _AddCategoryTextFieldState();
}

class _AddCategoryTextFieldState extends State<AddCategoryTextField> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        executeAfterBuild(() {
          textEditingController.text = getAddAccountTextFieldData(
            ref,
            widget.title,
          );
        });

        if (hasAddAccountTextFieldFocus(ref, widget.title)) {
          focusNode.requestFocus();
        }
        return widget.title == 'Category type'? DropdownButtonFormField2<String>(
          isExpanded: true,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            // Add more decoration..
          ),
          hint: const Text(
            'Select type',
            style: TextStyle(fontSize: 14),
          ),
          items: [
            'Expense',
            'Income',
            'Both',
          ]
              .map((item) => DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ))
              .toList(),
          validator: (value) {
            // if (value == null) {
            //   return 'Please select gender.';
            // }
            return null;
          },
          onChanged: (value) {
            print(value);
          },

          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.only(right: 8),
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.black45,
            ),
            iconSize: 24,
          ),
          dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
        ):
        TextFormField(
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
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: .6),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
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
