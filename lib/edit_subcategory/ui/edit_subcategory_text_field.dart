import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account/functions/add_account_functions.dart';
import 'package:my_spending/add_category/functions/add_category_validations.dart';
import 'package:my_spending/add_subcategory/functions/add_subcategory_validations.dart';
import 'package:my_spending/core/constants/style_constants.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/edit_category/functions/edit_category_functions.dart';
import 'package:my_spending/edit_category/state/edit_category_state.dart';
import 'package:my_spending/edit_subcategory/functions/edit_subcategory_functions.dart';
import 'package:my_spending/edit_subcategory/state/edit_subcategory_state.dart';

class EditSubcategoryTextField extends StatefulWidget {
  final String title;
  final SubcategoryModel subcategoryModel;

  const EditSubcategoryTextField({
    super.key,
    required this.title,
    required this.subcategoryModel,
  });

  @override
  State<EditSubcategoryTextField> createState() =>
      _EditSubcategoryTextFieldState();
}

class _EditSubcategoryTextFieldState extends State<EditSubcategoryTextField> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        if (hasEditSubcategoryNameTextFieldFocus(ref)) {
          focusNode.requestFocus();
        } else {
          focusNode.unfocus();
        }

        executeAfterBuild(() {
          if (!ref
              .read(editSubcategoryStateProvider.notifier)
              .isSubcategoryNameSetInitially) {
            ref
                .read(editSubcategoryStateProvider.notifier)
                .updateSubcategoryName(widget.subcategoryModel.subcategoryName);
          }
          textEditingController.text =
              widget.title == LocaleKeys.category
                  ? ref.watch(
                        editSubcategoryStateProvider.select(
                          (state) => state.newCategoryName,
                        ),
                      ) ??
                      getEditSubcategoryCategoryName(
                        widget.subcategoryModel.categoryId,
                      )
                  : ref
                      .watch(editSubcategoryStateProvider.notifier)
                      .subcategoryName;
        });

        return TextFormField(
          controller: textEditingController,
          focusNode: focusNode,
          keyboardType: getAddTransactionTextFieldKeyBoardType(widget.title),
          onTap:
              () => onEditSubcategoryTextFieldPressed(
                context: context,
                ref: ref,
                title: widget.title,
              ),
          onChanged:
              (text) => ref
                  .read(editSubcategoryStateProvider.notifier)
                  .updateSubcategoryName(text),
          readOnly: isReadOnlyEditSubcategoryTextField(widget.title),
          decoration: getDefaultTextInputDecoration(
            suffix:
                widget.title == LocaleKeys.category
                    ? Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(Icons.arrow_drop_down_rounded),
                    )
                    : null,
          ),
          validator:
              (value) => validateSubcategoryName(textEditingController.text),
        );
      },
    );
  }
}
