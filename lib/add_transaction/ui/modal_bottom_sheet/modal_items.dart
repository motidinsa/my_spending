import 'package:flutter/material.dart';
import 'package:my_spending/add_transaction/ui/modal_bottom_sheet/single_modal_item.dart';

class ModalItems extends StatelessWidget {
  final bool isPrimary;

  const ModalItems({super.key, required this.isPrimary});

  @override
  Widget build(BuildContext context) {
    return isPrimary
        ?
    Container(
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
                itemBuilder:
                    (context, index) =>
                        index == 2
                            ? SingleModalItem(name: 'Cash', index: index)
                            : SingleModalItem(
                              name: 'Cash',
                              index: index,
                              hasSubItem: true,
                            ),

                itemCount: 5,
              ),
            ),
          ),
        )
        : Material(
          color: Colors.transparent,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder:
                (context, index) => SingleModalItem(
                  name: 'Cash',
                  index: index,
                  isSecondary: true,
                ),

            itemCount: 3,
          ),
        );
  }
}
