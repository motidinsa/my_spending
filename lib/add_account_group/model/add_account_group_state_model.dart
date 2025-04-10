import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_spending/core/model/account_model.dart';
import 'package:my_spending/core/model/category_model.dart';
import 'package:my_spending/core/model/subaccount_model.dart';
import 'package:my_spending/core/model/subcategory_model.dart';
import 'package:my_spending/core/model/transaction_model.dart';

part 'add_account_group_state_model.freezed.dart';

@freezed
abstract class AddAccountGroupStateModel with _$AddAccountGroupStateModel {
  const factory AddAccountGroupStateModel({
    required String groupName,
    bool? isSaveButtonPressed,

  }) = _AddAccountGroupStateModel;
}
