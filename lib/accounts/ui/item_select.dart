import 'package:flutter/material.dart';
// import 'package:smooth_corner/smooth_corner.dart';

class ItemSelect extends StatelessWidget {
  final String title;
  final IconData iconData;
  final bool? hasDetailIcon;

  const ItemSelect({
    super.key,
    required this.title,
    required this.iconData,
    this.hasDetailIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      shape: RoundedRectangleBorder(
        // side: BorderSide(color: Colors.green.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      child: ListTile(
        onTap: () {},
        // shape: SmoothRectangleBorder(
        //   borderRadius: smoothBorderRadius(),
        // ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade800,
                  // fontSize: 17,
                ),
              ),
            ),
            SizedBox(width: 5,),
            Expanded(
              child: Text(
                '\$ 2,000,245.2231',textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade800,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
