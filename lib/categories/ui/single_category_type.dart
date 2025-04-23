import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/add_transaction/functions/add_transaction_functions.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/categories/functions/categories_function.dart';
import 'package:my_spending/categories/state/categories_state.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

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
        return GestureDetector(
          onTap: () {
            ref.read(categoriesStateProvider.notifier).updateCategoryList(name);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
              color: getCategoryTypeBackgroundColor(
                selectedType: ref.watch(
                  categoriesStateProvider.select(
                    (state) =>
                        state.value?.selectedCategoryType ?? LocaleKeys.expense,
                  ),
                ),
                initialType: name,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(icon, color: foregroundColor),
                SizedBox(height: 3),
                Text(
                  context.tr(name),
                  style: TextStyle(color: foregroundColor),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
