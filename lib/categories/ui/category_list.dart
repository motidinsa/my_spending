import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/categories/functions/categories_function.dart';
import 'package:my_spending/categories/state/categories_other_state.dart';
import 'package:my_spending/categories/state/categories_state.dart';
import 'package:my_spending/categories/ui/single_category_mini_detail.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';

class CategoryList extends StatelessWidget {
  final String categoryType;

  const CategoryList({super.key, required this.categoryType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Consumer(
        builder: (context, ref, child) {
          return ref
              .watch(categoriesStateProvider)
              .when(
                data: (data) {
                  List<CategoryModel> categoryList = getCategoriesByType(
                    categoryType,
                    data.categoryList,
                  );
                  return ListView.separated(
                    controller:
                        ref
                            .watch(categoriesOtherStateProvider.notifier)
                            .scrollController,
                    shrinkWrap: true,
                    itemBuilder:
                        (ctx, index) => SingleCategoryMiniDetail(
                          categoryModel: categoryList[index],
                        ),
                    separatorBuilder: (ctx, index) => SizedBox(height: 5),
                    itemCount: categoryList.length,
                  );
                },
                error: (error, a) => Text(error.toString()),
                loading:
                    () => Center(
                      child: CircularProgressIndicator(
                        color: Colors.green.shade700,
                        strokeWidth: 3,
                      ),
                    ),
              );
        },
      ),
    );
  }
}
