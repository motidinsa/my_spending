import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleCategoryType extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color foregroundColor;

  const SingleCategoryType({
    super.key,
    required this.icon,
    required this.name,
    required this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 7),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FaIcon(icon, color: foregroundColor),
              SizedBox(height: 3),
              Text(context.tr(name), style: TextStyle(color: foregroundColor)),
            ],
          ),
        );
      },
    );
  }
}
