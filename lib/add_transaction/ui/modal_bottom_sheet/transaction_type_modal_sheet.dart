import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/account_group_list_select.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/category_list_select.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/subaccount_list_select.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/subcategory_list_select.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

class TransactionTypeModalSheet extends StatelessWidget {
  final String redirectFrom;

  const TransactionTypeModalSheet({super.key, required this.redirectFrom});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    redirectFrom == LocaleKeys.account
                        ? context.tr(LocaleKeys.selectAccount)
                        : context.tr(LocaleKeys.selectCategory),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    context.tr(LocaleKeys.edit),
                    style: TextStyle(color: Colors.green.shade500),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child:
                        redirectFrom == LocaleKeys.account
                            ? AccountGroupListSelect()
                            : CategoryListSelect(),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child:
                        redirectFrom == LocaleKeys.account
                            ? SubAccountListSelect()
                            : SubcategoryListSelect(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
