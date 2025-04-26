import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/categories/state/categories_other_state.dart';
import 'package:my_spending/subcategories/state/subcategories_state.dart';
import 'package:my_spending/subcategories/ui/single_subcategory_mini_detail.dart';

class SubcategoryList extends StatelessWidget {
  final String categoryId;

  const SubcategoryList({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Consumer(
        builder: (context, ref, child) {
          return ref
              .watch(subcategoriesStateProvider(categoryId))
              .when(
                data: (data) {
                  return ReorderableListView.builder(
                    scrollController:
                        ref
                            .watch(categoriesOtherStateProvider.notifier)
                            .scrollController,
                    shrinkWrap: true,
                    itemBuilder:
                        (ctx, index) => SingleSubcategoryMiniDetail(
                          index: index,
                          key: ValueKey(index),
                          subcategoryModel: data[index],
                        ),
                    itemCount: data.length,
                    onReorder: (int oldIndex, int newIndex) {
                      if (newIndex > oldIndex) newIndex--;
                      ref
                          .read(subcategoriesStateProvider(categoryId).notifier)
                          .reorderSubcategories(
                            oldIndex: oldIndex,
                            newIndex: newIndex,
                            subcategoryList: data,
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
