import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_spending/core/model/transaction_model.dart';

part 'add_transaction_state_model.freezed.dart';

@freezed
abstract class AddTransactionModel with _$AddTransactionModel {
  const factory AddTransactionModel({
    required TransactionModel transactionModel,
    bool? isAmountAddButtonPressed,
    required String transactionType,
     double? modalHeight,

  }) = _AddTransactionModel;
}
