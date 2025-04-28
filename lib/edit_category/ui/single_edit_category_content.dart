import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/edit_category/ui/edit_category_text_field.dart';

class SingleEditCategoryContent extends StatelessWidget {
  final String title;
  final CategoryModel categoryModel;

  const SingleEditCategoryContent({
    super.key,
    required this.title,
    required this.categoryModel,
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
        EditCategoryTextField(
          title: title,
          categoryModel: categoryModel,
        ),
      ],
    );
  }
}
