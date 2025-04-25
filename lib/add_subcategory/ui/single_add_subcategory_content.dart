import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_spending/add_subcategory/ui/add_subcategory_text_field.dart';

class SingleAddSubcategoryContent extends StatelessWidget {
  final String title;
  final String? data;

  const SingleAddSubcategoryContent({super.key, required this.title,this.data});

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
        AddSubcategoryTextField(title: title,data: data,),
      ],
    );
  }
}
