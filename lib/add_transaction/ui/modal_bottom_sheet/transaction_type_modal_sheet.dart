import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/account_group_list_select.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/category_list_select.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/subaccount_list_select.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/subcategory_list_select.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/widget_size.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

class TransactionTypeModalSheet extends StatelessWidget {
  final String redirectFrom;

  const TransactionTypeModalSheet({super.key, required this.redirectFrom});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  redirectFrom == LocaleKeys.category
                      ? context.tr(LocaleKeys.selectCategory)
                      : context.tr(LocaleKeys.selectAccount),
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
        Padding(
          padding: const EdgeInsets.only(bottom: 15,left: 20  ,right: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height /2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child:
                      redirectFrom == LocaleKeys.category
                          ? CategoryListSelect()
                          : AccountGroupListSelect(type: redirectFrom),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child:
                      redirectFrom == LocaleKeys.category
                          ? SubcategoryListSelect()
                          : SubAccountListSelect(type: redirectFrom),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
