import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';

class SingleCategoryMiniDetail extends StatelessWidget {
  final CategoryModel categoryModel;
  final int index;

  const SingleCategoryMiniDetail({
    super.key,
    required this.categoryModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green.shade50,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.green, width: .2),
        borderRadius: BorderRadius.circular(12),
      ),

      child: ListTile(
        dense: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(
          categoryModel.categoryName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          plural(LocaleKeys.subcategoryCount, 20),
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
            fontSize: 14,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit_outlined, color: Colors.grey.shade600),
              onPressed: () {},
            ),
            SizedBox(width: 20),
            ReorderableDragStartListener(
              index: index,
              child: Icon(Icons.menu, color: Colors.grey),
            ),
          ],
        ),
        onTap: () {
          context.go(
            '/settings/categories/subcategories',
            extra: {
              'categoryName': categoryModel.categoryName,
              'categoryId': categoryModel.categoryId,
            },
          );
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 30),
      ),
    );
  }
}
