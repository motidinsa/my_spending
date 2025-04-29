import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/categories/state/categories_state.dart';
import 'package:my_spending/edit_subcategory/state/edit_subcategory_state.dart';

class AlertDialogCategoryList extends StatelessWidget {
  const AlertDialogCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Set your desired radius here
      ),
      title: Text(
        'Change category',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.green.shade700,
        ),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Material(
            color: Colors.transparent,
            child: Consumer(
              builder: (context, ref, child) {
                return ref
                    .watch(categoriesStateProvider)
                    .when(
                      data: (data) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            final category = data[index];
                            return ListTile(
                              title: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                child: Text(
                                  category.categoryName,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              onTap: () {
                                ref
                                    .read(editSubcategoryStateProvider.notifier)
                                    .updateCategory(
                                      category.categoryName,
                                      category.categoryId,
                                    );
                              },
                            );
                          },
                        );
                      },
                      loading:
                          () =>
                              const Center(child: CircularProgressIndicator()),
                      error:
                          (error, stack) =>
                              Center(child: Text('Error: $error')),
                    );
              },
            ),
          ),
        ),
      ),
    );
  }
}
