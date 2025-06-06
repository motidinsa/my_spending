import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/edit_category/state/edit_category_state.dart';
import 'package:my_spending/edit_subcategory/functions/edit_subcategory_functions.dart';
import 'package:my_spending/edit_subcategory/state/edit_subcategory_state.dart';
import 'package:my_spending/edit_subcategory/ui/single_edit_subcategory_content.dart';

class EditSubcategory extends StatelessWidget {
  final SubcategoryModel subcategoryModel;

  const EditSubcategory({super.key, required this.subcategoryModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.tr(LocaleKeys.editSubcategory),
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
                      ref.watch(editSubcategoryStateProvider);
                      return Form(
                        key:
                            ref
                                .watch(editSubcategoryStateProvider.notifier)
                                .formKey,
                        autovalidateMode:
                            ref.watch(
                                      editSubcategoryStateProvider.select(
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
                            SingleEditSubcategoryContent(
                              title: LocaleKeys.category,
                              subcategoryModel: subcategoryModel,
                            ),
                            SizedBox(height: 10),
                            Consumer(
                              builder: (context, ref, child) {
                                ref.watch(editCategoryStateProvider);
                                return SingleEditSubcategoryContent(
                                  title: LocaleKeys.name,
                                  subcategoryModel: subcategoryModel,
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
                        () =>
                            onEditSubcategorySavePressed(ref, subcategoryModel),
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
                        ref.watch(editSubcategoryStateProvider).isLoading ==
                                true
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
