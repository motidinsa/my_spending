import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/categories/ui/single_category_type.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

class CategoryTypeSelect extends StatelessWidget {
  const CategoryTypeSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green, width: .5),
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: SingleCategoryType(
                  name: LocaleKeys.expense,
                  icon: FontAwesomeIcons.arrowDown,
                  // backgroundColor: Colors.white,
                  foregroundColor: Colors.red.shade900,
                ),
              ),
              Expanded(
                child: SingleCategoryType(
                  name: LocaleKeys.income,
                  icon: FontAwesomeIcons.arrowUp,
                  // backgroundColor: Colors.green.shade100,
                  foregroundColor: Colors.green.shade900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
