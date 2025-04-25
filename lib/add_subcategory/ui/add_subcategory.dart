import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_category/state/add_category_state.dart';
import 'package:my_spending/add_subcategory/functions/add_subcategory_functions.dart';
import 'package:my_spending/add_subcategory/state/add_subcategory_state.dart';
import 'package:my_spending/add_subcategory/ui/single_add_subcategory_content.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/functions/core_functions.dart';

class AddSubcategory extends StatelessWidget {
  final String categoryName;
  final String categoryId;

  const AddSubcategory({
    super.key,
    required this.categoryName,
    required this.categoryId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.tr(LocaleKeys.addSubcategory),
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
                      return Form(
                        key:
                            ref
                                .watch(addSubcategoryStateProvider.notifier)
                                .formKey,
                        autovalidateMode:
                            ref.watch(
                                      addSubcategoryStateProvider.select(
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
                            SingleAddSubcategoryContent(
                              title: LocaleKeys.category,
                              data: categoryName,
                            ),
                            SizedBox(height: 10),
                            Consumer(
                              builder: (context, ref, child) {
                                ref.watch(addCategoryStateProvider);
                                return SingleAddSubcategoryContent(
                                  title: LocaleKeys.name,
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
                    onPressed: () => onAddSubcategorySavePressed(ref,categoryId),
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
                        ref.watch(addSubcategoryStateProvider).isLoading == true
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
