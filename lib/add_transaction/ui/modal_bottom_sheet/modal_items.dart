import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/provider/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/single_modal_item.dart';
import 'package:my_spending/core/model/category_model.dart';

class ModalItems extends StatelessWidget {
  final bool isPrimary;


  const ModalItems({super.key, required this.isPrimary, });

  @override
  Widget build(BuildContext context) {
    List<CategoryModel>? categoryModels = [
      CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),CategoryModel(
        categoryName: 'cat 1',
        categoryId: '1',
        dateCreated: DateTime.now(),
      ),
    ];
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
                    name: categoryModels?[index].categoryName ?? '',
                    index: index,
                    hasSubItem: categoryModels?[index].hasSubcategory,
                  );
                },

                itemCount: categoryModels.length,
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
                  name: categoryModels?[index].categoryName ?? '',
                  index: index,
                  hasSubItem: categoryModels?[index].hasSubcategory,
                  isSecondary: true,
                ),

            itemCount: categoryModels.length,
          ),
        );
  }
}
