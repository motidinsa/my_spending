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
                  return ReorderableListView.builder(
                    scrollController:
                        ref
                            .watch(categoriesOtherStateProvider.notifier)
                            .scrollController,
                    shrinkWrap: true,
                    itemBuilder:
                        (ctx, index) => SingleCategoryMiniDetail(
                          index: index,
                          key: ValueKey(index),
                          categoryModel: categoryList[index],
                        ),
                    itemCount: categoryList.length,
                    onReorder: (int oldIndex, int newIndex) {
                      if (newIndex > oldIndex) newIndex--;
                      ref
                          .read(categoriesStateProvider.notifier)
                          .reorderCategories(
                            oldIndex: oldIndex,
                            newIndex: newIndex,
                            categoryType: categoryType,
                            categoryList: categoryList,
                          );
                    },
                    proxyDecorator: (child, index, animation) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              // spreadRadius: 10,
                              blurRadius: 8,
                              // offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: child, // The actual list item content
                      );
                    },
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
