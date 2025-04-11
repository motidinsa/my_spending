import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/add_account_group/functions/add_account_group_functions.dart';
import 'package:my_spending/add_account_group/provider/add_account_group_state.dart';
import 'package:my_spending/add_account_group/ui/add_account_group_text_field.dart';

class AddAccountGroup extends StatelessWidget {
  const AddAccountGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add account group',
          style: TextStyle(
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Consumer(
          builder: (context, ref, child) {
            // if(ref.watch(addAccountGroupStateProvider).isLoading == true){
            //   context.loaderOverlay.show();
            // }else{
            //   context.loaderOverlay.hide();
            // }
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2, bottom: 10),
                  child: Text(
                    'Group name',
                    style: TextStyle(
                      color: Colors.green.shade800,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                AddAccountGroupTextField(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: ElevatedButton(
                    onPressed: () => onAddAccountGroupSavePressed(ref),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ), // Set the border radius here
                      ),
                    ),
                    child:
                        ref.watch(addAccountGroupStateProvider).isLoading ==
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
                              'Save',
                              style: TextStyle(color: Colors.white),
                            ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
