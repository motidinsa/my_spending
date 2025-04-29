import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';

class SingleSubcategoryMiniDetail extends StatelessWidget {
  final SubcategoryModel subcategoryModel;
  final int index;

  const SingleSubcategoryMiniDetail({
    super.key,
    required this.subcategoryModel,
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(
          subcategoryModel.subcategoryName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
            fontSize: 16,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red.shade300),
              onPressed: () {},
            ),
            SizedBox(width: 15),
            ReorderableDragStartListener(
              index: index,
              child: Icon(Icons.menu, color: Colors.grey),
            ),
          ],
        ),
        onTap: () {
          context.push('/edit_subcategory', extra: subcategoryModel);
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 30),
      ),
    );
  }
}
