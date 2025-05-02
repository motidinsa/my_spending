import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/repository/isar_add_transaction_repository.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/single_modal_item.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';

class SubcategoryListSelect extends StatelessWidget {
  const SubcategoryListSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        String? selectedId = ref.watch(
          addTransactionStateProvider.select((state) => state.selectedId),
        );
        IsarAddTransactionRepository isarAddTransactionRepository =
            IsarAddTransactionRepository();
        return selectedId == null
            ? Container()
            : FutureBuilder(
              future: isarAddTransactionRepository.getSubcategories(selectedId),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<SubcategoryModel> subcategoryModels = snapshot.data!;
                  return subcategoryModels.isEmpty
                      ? Container()
                      : Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          // border: Border.all(color: Colors.green.shade200, width: 1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Material(
                            color: Colors.transparent,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return SingleModalItem(
                                  name:
                                      subcategoryModels[index].subcategoryName,
                                  type: LocaleKeys.category,
                                  id: subcategoryModels[index].subcategoryId,
                                  isSelected: false,
                                  categoryType:
                                      ref
                                          .watch(
                                            addTransactionStateProvider
                                                .notifier,
                                          )
                                          .categoryType,
                                );
                              },

                              itemCount: subcategoryModels.length,
                            ),
                          ),
                        ),
                      );
                }
                return Center(
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      color: Colors.green.shade700,
                      strokeWidth: 3,
                    ),
                  ),
                );
              },
            );
      },
    );
  }
}
