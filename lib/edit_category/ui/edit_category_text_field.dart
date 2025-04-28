import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account/functions/add_account_functions.dart';
import 'package:my_spending/add_category/functions/add_category_validations.dart';
import 'package:my_spending/core/constants/style_constants.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/edit_category/functions/edit_category_functions.dart';
import 'package:my_spending/edit_category/state/edit_category_state.dart';

class EditCategoryTextField extends StatefulWidget {
  final String title;
  final CategoryModel categoryModel;

  const EditCategoryTextField({
    super.key,
    required this.title,
    required this.categoryModel,
  });

  @override
  State<EditCategoryTextField> createState() => _EditCategoryTextFieldState();
}

class _EditCategoryTextFieldState extends State<EditCategoryTextField> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        if (hasEditCategoryNameTextFieldFocus(ref)) {
          focusNode.requestFocus();
        } else {
          focusNode.unfocus();
        }
        // textEditingController.text = widget.categoryModel.categoryName;
        // if (widget.title == LocaleKeys.categoryType) {
        textEditingController.text = widget.categoryModel.categoryName;
        ref
            .read(editCategoryStateProvider.notifier)
            .updateCategoryName(widget.categoryModel.categoryName);
        // } else if (widget.title == LocaleKeys.name) {
        ref
            .read(editCategoryStateProvider.notifier)
            .updateCategoryType(widget.categoryModel.categoryType);
        // }

        return widget.title == LocaleKeys.categoryType
            ? DropdownButtonFormField2<String>(
              decoration: getDefaultTextInputDecoration(type: widget.title),
              hint: Text(
                context.tr(LocaleKeys.selectType),
                style: TextStyle(fontSize: 14),
              ),
              value: widget.categoryModel.categoryType,
              items:
                  [LocaleKeys.expense, LocaleKeys.income, LocaleKeys.both]
                      .map(
                        (item) => DropdownMenuItem<String>(
                          value: item,
                          child: Row(
                            children: [
                              Text(
                                context.tr(item),
                                style: TextStyle(color: Colors.grey.shade700),
                              ),
                              SizedBox(width: 20),
                              if (item == LocaleKeys.expense) ...[
                                Icon(
                                  Icons.arrow_downward_rounded,
                                  color: Colors.red,
                                ),
                              ] else if (item == LocaleKeys.income) ...[
                                Icon(Icons.arrow_upward, color: Colors.green),
                              ] else ...[
                                Icon(
                                  Icons.arrow_downward_rounded,
                                  color: Colors.red,
                                  size: 22,
                                ),
                                Icon(
                                  Icons.arrow_upward,
                                  color: Colors.green,
                                  size: 22,
                                ),
                              ],
                            ],
                          ),
                        ),
                      )
                      .toList(),

              onChanged: (value) {
                if (value != null) {
                  ref
                      .read(editCategoryStateProvider.notifier)
                      .updateCategoryType(value);
                }
              },

              validator: (value) => validateCategoryType(value),
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.only(right: 10),
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.black45,
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            )
            : TextFormField(
              controller: textEditingController,
              focusNode: focusNode,
              keyboardType: getAddTransactionTextFieldKeyBoardType(
                widget.title,
              ),
              onTap:
                  () => onAddAccountTextFieldPressed(
                    context: context,
                    ref: ref,
                    title: widget.title,
                  ),
              onChanged:
                  (text) => ref
                      .read(editCategoryStateProvider.notifier)
                      .updateCategoryName(text),
              readOnly: isReadOnlyAddAccountTextField(widget.title),
              decoration: getDefaultTextInputDecoration(),
              validator:
                  (value) => validateCategoryName(textEditingController.text),
            );
      },
    );
  }
}
