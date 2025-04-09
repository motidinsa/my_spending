import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/accounts/ui/item_select.dart';

class ItemType extends StatelessWidget {
  final String title;
  final String addItemName;
  final String detailPageName;

  ItemType({
    super.key,
    required this.addItemName,
    required this.detailPageName,
    required this.title,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.green.shade200, width: .5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 0.5,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey.shade700,
                  ),
                ),
                // Icon(
                //   nameToIconItemType[title],
                //   color: Colors.grey.shade600,
                //   size: fontawesomeIcons.contains(title) ? 20 : null,
                // ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ItemSelect(
            title: addItemName,
            iconData: Icons.add,
          ),
          SizedBox(height: 7),
          ItemSelect(
            title: detailPageName,
            iconData: Icons.add,
            // hasDetailIcon: detailPageName == reorderStockN ? true : null,
          ),
        ],
      ),
    );
  }
}
