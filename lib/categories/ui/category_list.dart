import 'package:flutter/material.dart';
import 'package:my_spending/categories/ui/single_category_mini_detail.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryModel> categoryModels;

  const CategoryList({super.key, required this.categoryModels});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder:
            (ctx, index) =>
                SingleCategoryMiniDetail(categoryModel: categoryModels[index]),
        separatorBuilder: (ctx, index) => SizedBox(height: 5),
        itemCount: categoryModels.length,
      ),
    );
  }
}
