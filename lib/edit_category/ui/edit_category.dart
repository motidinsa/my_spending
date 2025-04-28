import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/edit_category/functions/edit_category_functions.dart';
import 'package:my_spending/edit_category/state/edit_category_state.dart';
import 'package:my_spending/edit_category/ui/single_edit_category_content.dart';

class EditCategory extends StatelessWidget {
  final CategoryModel categoryModel;

  const EditCategory({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.tr(LocaleKeys.editCategory),
            style: TextStyle(
              color: Colors.green.shade800,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.green.shade200, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 20,
                  ),
                  child: Consumer(
                    builder: (context, ref, child) {
                      ref.watch(editCategoryStateProvider);
                      return Form(
                        key:
                            ref
                                .watch(editCategoryStateProvider.notifier)
                                .formKey,
                        autovalidateMode:
                            ref.watch(
                                      editCategoryStateProvider.select(
                                        (state) => state.isSaveButtonPressed,
                                      ),
                                    ) ==
                                    true
                                ? AutovalidateMode.always
                                : null,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SingleEditCategoryContent(
                              title: LocaleKeys.categoryType,
                              categoryModel: categoryModel,
                            ),
                            SizedBox(height: 10),
                            Consumer(
                              builder: (context, ref, child) {
                                ref.watch(editCategoryStateProvider);
                                return SingleEditCategoryContent(
                                  title: LocaleKeys.name,
                                  categoryModel: categoryModel,
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Consumer(
              builder: (context, ref, child) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  child: ElevatedButton(
                    onPressed:
                        () => onEditCategorySavePressed(ref, categoryModel),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ), // Set the border radius here
                      ),
                    ),
                    child:
                        ref.watch(editCategoryStateProvider).isLoading == true
                            ? SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 3,
                              ),
                            )
                            : Text(
                              context.tr(LocaleKeys.save),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
