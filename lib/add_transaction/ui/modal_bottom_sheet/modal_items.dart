import 'package:flutter/material.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/single_modal_item.dart';
import 'package:my_spending/core/model/account_model.dart';
import 'package:my_spending/core/model/category_model.dart';
import 'package:my_spending/core/model/subaccount_model.dart';
import 'package:my_spending/core/model/subcategory_model.dart';

class ModalItems extends StatelessWidget {
  final bool isPrimary;
  final String type;
  final List<CategoryModel>? categoryModels;
  final List<SubcategoryModel>? subcategoryModels;
  final List<AccountModel>? accountModels;
  final List<SubAccountModel>? subAccountModels;

  const ModalItems({
    super.key,
    required this.isPrimary,
    this.categoryModels,
    this.accountModels,
    this.subAccountModels,
    this.subcategoryModels,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return isPrimary
        ? Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.green.shade200, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),

            child: Material(
              color: Colors.transparent,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SingleModalItem(
                    name:
                        type == 'Category'
                            ? categoryModels![index].categoryName
                            : accountModels![index].accountName,
                    index: index,
                    hasSubItem:
                        type == 'Category'
                            ? categoryModels![index].hasSubcategory
                            : true
                        // accountModels![index].hasSubAccount
                    ,
                  );
                },

                itemCount: categoryModels?.length ?? accountModels?.length ?? 0,
              ),
            ),
          ),
        )
        : Material(
          color: Colors.transparent,
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder:
                (context, index) => SingleModalItem(
                  name:
                      subcategoryModels?[index].subcategoryName ??
                      subAccountModels![index].subAccountName,
                  index: index,
                  isSecondary: true,
                ),

            itemCount:
                subcategoryModels?.length ?? subAccountModels?.length ?? 0,
          ),
        );
  }
}
