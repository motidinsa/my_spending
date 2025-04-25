import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/subcategories/ui/single_subcategory_mini_detail.dart';

class Subcategories extends StatelessWidget {
  final String categoryName;

  const Subcategories({super.key, required this.categoryName});

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
                // context.push('/add_category');
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
      body: ListView(
        children: [
          SingleSubcategoryMiniDetail(
            subcategoryModel: SubcategoryModel(
              subcategoryName: 'subcategoryName',
              subcategoryId: 'subcategoryId',
              categoryId: 'categoryId',
              dateCreated: DateTime.now(),
            ),
            index: 0,
          ),
          SingleSubcategoryMiniDetail(
            subcategoryModel: SubcategoryModel(
              subcategoryName: 'subcategoryName',
              subcategoryId: 'subcategoryId',
              categoryId: 'categoryId',
              dateCreated: DateTime.now(),
            ),
            index: 0,
          ),
        ],
      ),
    );
  }
}
