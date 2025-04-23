import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/categories/state/categories_state.dart';
import 'package:my_spending/categories/ui/category_list.dart';
import 'package:my_spending/categories/ui/category_type_select.dart';
import 'package:my_spending/categories/ui/single_category_mini_detail.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

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
                context.push('/add_category');
              },
              label: Text(
                context.tr(LocaleKeys.addCategory),
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green.shade400,
            ),
          );
        },
      ),
      appBar: AppBar(
        title: Text(
          context.tr(LocaleKeys.categories),
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
          SizedBox(height: 10,),
          Expanded(
            child: Consumer(builder: (ctx,ref,child)=>ref
                .watch(categoriesStateProvider)
                .when(
              data:
                  (data) =>
                  CategoryList(categoryModels: data.categoryList),
              error: (error, a) => Text(error.toString()),
              loading: () => Center(
                child: CircularProgressIndicator(
                  color: Colors.green.shade700,
                  strokeWidth: 3,
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
