import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_category/functions/add_category_functions.dart';
import 'package:my_spending/add_category/state/add_category_state.dart';
import 'package:my_spending/add_category/ui/single_add_category_content.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/functions/core_functions.dart';

class AddCategory extends StatelessWidget {
  const AddCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.tr(LocaleKeys.addCategory),
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
                                .watch(addCategoryStateProvider.notifier)
                                .formKey,
                        autovalidateMode:
                            ref.watch(
                                      addCategoryStateProvider.select(
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
                            SingleAddCategoryContent(title: LocaleKeys.categoryType),
                            SizedBox(height: 10),
                            Consumer(
                              builder: (context, ref, child) {
                                ref.watch(addCategoryStateProvider);
                                return SingleAddCategoryContent(title: LocaleKeys.name);
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
                    onPressed: () => onAddCategorySavePressed(ref),
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
                        ref.watch(addCategoryStateProvider).isLoading == true
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
