import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/edit_subcategory/ui/edit_subcategory_text_field.dart';

class SingleEditSubcategoryContent extends StatelessWidget {
  final String title;
  final SubcategoryModel subcategoryModel;

  const SingleEditSubcategoryContent({
    super.key,
    required this.title,
    required this.subcategoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2, bottom: 5),
          child: Text(
            context.tr(title),
            style: TextStyle(
              color: Colors.green.shade800,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        EditSubcategoryTextField(
          title: title,
          subcategoryModel: subcategoryModel,
        ),
      ],
    );
  }
}
