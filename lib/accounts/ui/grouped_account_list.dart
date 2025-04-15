import 'package:flutter/material.dart';
import 'package:my_spending/accounts/functions/accounts_function.dart';
import 'package:my_spending/accounts/ui/mini_account_detail.dart';
import 'package:my_spending/core/model/account_model.dart';

class GroupedAccountList extends StatelessWidget {
  final List<AccountModel> accountModels;

  const GroupedAccountList({super.key, required this.accountModels});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.green.shade200, width: .5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 0.5,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              getAccountGroupName(accountModels.first.groupId),
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color:
                    accountModels.first.groupId != null
                        ? Colors.green.shade700
                        : Colors.grey.shade500,
              ),
            ),
          ),
          SizedBox(height: 5),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder:
                (context, index) =>
                    MiniAccountDetail(accountModel: accountModels[index]),
            separatorBuilder: (context, index) => SizedBox(height: 7),
            itemCount: accountModels.length,
          ),
        ],
      ),
    );
  }
}
