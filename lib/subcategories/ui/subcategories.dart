import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/subcategories/ui/subcategory_list.dart';

class Subcategories extends StatelessWidget {
  final String categoryName;
  final String categoryId;

  const Subcategories({
    super.key,
    required this.categoryName,
    required this.categoryId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return Visibility(
            // visible: ref.watch(categoriesOtherStateProvider),
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                context.push(
                  '/add_subcategory',
                  extra: {
                    'categoryName': categoryName,
                    'categoryId': categoryId,
                  },
                );
              },
              label: Text(
                context.tr(LocaleKeys.addSubcategory),
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green.shade400,
            ),
          );
        },
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: Text(
          categoryName,
          style: TextStyle(
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SubcategoryList(categoryId: categoryId,),
    );
  }
}
