import 'package:flutter/material.dart';

class SingleCategoryMiniDetail extends StatelessWidget {
  const SingleCategoryMiniDetail({super.key});

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
          'Category name',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          '3 subcategories',
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
            Icon(Icons.menu, color: Colors.grey),
          ],
        ),
        onTap: () {},
        contentPadding: EdgeInsets.symmetric(horizontal: 30),
      ),
    );
  }
}
