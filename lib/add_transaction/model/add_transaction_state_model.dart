import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_spending/core/model/account_model/account_model.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/core/model/subaccount_model.dart';
import 'package:my_spending/core/model/subcategory_model.dart';
import 'package:my_spending/core/model/transaction_model.dart';

part 'add_transaction_state_model.freezed.dart';

@freezed
abstract class AddTransactionStateModel with _$AddTransactionStateModel {
  const factory AddTransactionStateModel({
    required TransactionModel transactionModel,
    required String amount,
    bool? isAmountAddButtonPressed,
    required String transactionType,
    double? modalHeight,
    String? redirectFrom,
    required List<CategoryModel> categoryModels,
     List<SubcategoryModel>? subcategoryModels,
    required List<AccountModel> accountModels,
     List<SubAccountModel>? subAccountModels,
  }) = _AddTransactionStateModel;
}
