import 'package:flutter/material.dart';

class ModalItem extends StatelessWidget {
  final String name;
  final bool? hasSubItem;

  const ModalItem({super.key, required this.name, this.hasSubItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade800,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.green.shade400,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
