import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_transaction/functions/add_transaction_functions.dart';
import 'package:my_spending/add_transaction/state/add_transaction_state.dart';
import 'package:my_spending/add_transaction/ui/add_transaction_text_field.dart';
import 'package:my_spending/add_transaction/ui/single_add_transaction_content.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/functions/core_functions.dart';

class SingleTransactionAdd extends StatelessWidget {
  const SingleTransactionAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Consumer(
                builder: (context, ref, child) {
                  final addTransactionTransactionType = ref.watch(
                    addTransactionStateProvider.select(
                      (state) => state.transactionType,
                    ),
                  );
                  bool? isAmountAddButtonPressed =
                      ref.watch(
                        addTransactionStateProvider.select(
                          (state) => state.isAmountAddButtonPressed,
                        ),
                      ) ==
                      true;
                  final addTransactionNotifier = ref.read(
                    addTransactionStateProvider.notifier,
                  );
                  if (ref
                          .read(addTransactionStateProvider)
                          .isSaveButtonPressed ==
                      true) {
                    executeAfterBuild(() {
                      addTransactionNotifier.formKey.currentState!.validate();
                    });
                  }
                  return Form(
                    key: ref.read(addTransactionStateProvider.notifier).formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SingleAddTransactionContent(title: LocaleKeys.date),
                        SizedBox(height: 10),
                        SingleAddTransactionContent(
                          title:
                              addTransactionTransactionType ==
                                      LocaleKeys.transfer
                                  ? LocaleKeys.from
                                  : LocaleKeys.account,
                        ),
                        SizedBox(height: 10),
                        SingleAddTransactionContent(
                          title:
                              addTransactionTransactionType ==
                                      LocaleKeys.transfer
                                  ? LocaleKeys.to
                                  : LocaleKeys.category,
                        ),
                        SizedBox(height: 10),
                        SingleAddTransactionContent(title: LocaleKeys.amount),
                        if (isAmountAddButtonPressed)
                          Column(
                            children: [
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Expanded(
                                    child: AddTransactionTextField(
                                      title: LocaleKeys.tip,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: AddTransactionTextField(
                                      title: LocaleKeys.fee,
                                    ),
                                  ),
                                  SizedBox(width: 10),

                                  // Container(),
                                  if (isAmountAddButtonPressed)
                                    IconButton(
                                      onPressed: () {
                                        ref
                                            .read(
                                              addTransactionStateProvider
                                                  .notifier,
                                            )
                                            .onRemoveAmountIconPressed();
                                      },
                                      icon: Icon(
                                        Icons.cancel,
                                        color: Colors.red,
                                      ),
                                    )
                                  else
                                    IconButton(
                                      onPressed: null,
                                      icon: Container(),
                                    ),
                                ],
                              ),
                            ],
                          )
                        else
                          Container(),
                        SizedBox(height: 10),
                        SingleAddTransactionContent(
                          title: LocaleKeys.description,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),

        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Consumer(
            builder: (context, ref, child) {
              return Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: OutlinedButton(
                      onPressed:
                          () => onAddTransactionSaveButtonPressed(ref, context),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Colors.green.shade300,
                        side: BorderSide(color: Colors.green, width: .5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            12,
                          ), // Set the border radius here
                        ),
                      ),
                      child: Text(
                        context.tr(LocaleKeys.save),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Consumer(
                      builder: (context, ref, child) {
                        return ElevatedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            backgroundColor: Colors.green.shade300,
                            side: BorderSide(color: Colors.green, width: .5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ), // Set the border radius here
                            ),
                          ),
                          child: Text(
                            context.tr(LocaleKeys.more),
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
