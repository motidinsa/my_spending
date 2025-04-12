import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';
import 'package:my_spending/core/model/account_model.dart';
import 'package:my_spending/core/model/category_model.dart';
import 'package:my_spending/core/model/subaccount_model.dart';
import 'package:my_spending/core/model/subcategory_model.dart';
import 'package:my_spending/core/model/transaction_model.dart';

part 'add_account_state_model.freezed.dart';

@freezed
abstract class AddAccountStateModel with _$AddAccountStateModel {
  const factory AddAccountStateModel({
     String? groupName,
    List<AccountGroupModel>? accountGroupModels,
    bool? isAccountGroupsLoading
  }) = _AddAccountStateModel;
}
