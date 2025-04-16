import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/accounts/state/accounts_other_state.dart';
import 'package:my_spending/accounts/state/accounts_state.dart';
import 'package:my_spending/accounts/ui/grouped_account_list.dart';
import 'package:my_spending/categories/ui/category_type_select.dart';
import 'package:my_spending/categories/ui/single_category_mini_detail.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return Visibility(
            // visible: ref.watch(accountsOtherStateProvider),
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                context.push('/add_account');
              },
              label: Text(
                'Add category',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green.shade400,
            ),
          );
        },
      ),
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CategoryTypeSelect(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(height: 10),
                    SingleCategoryMiniDetail(),
                    SizedBox(height: 5),
                    SingleCategoryMiniDetail(),
                    SizedBox(height: 5),
                    SingleCategoryMiniDetail(),
                    SizedBox(height: 10),
                    SingleCategoryMiniDetail(),
                    SizedBox(height: 10),
                    SingleCategoryMiniDetail(),
                    SizedBox(height: 10),
                    SingleCategoryMiniDetail(),
                    SizedBox(height: 10),
                    SingleCategoryMiniDetail(),
                    SizedBox(height: 10),
                    SingleCategoryMiniDetail(),
                    SizedBox(height: 10),
                    SingleCategoryMiniDetail(),
                    SizedBox(height: 10),
                    SingleCategoryMiniDetail(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
