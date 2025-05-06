import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_spending/core/model/transaction_model/transaction_model.dart';

part 'add_transaction_state_model.freezed.dart';

@freezed
abstract class AddTransactionStateModel with _$AddTransactionStateModel {
  const factory AddTransactionStateModel({
    required TransactionModel transactionModel,
    bool? isAmountAddButtonPressed,
    required String transactionType,
    double? modalHeight,
    String? redirectFrom,
    String? selectedId,
    bool? hasAmountFocus,
    String? fromAccount,
    String? toAccount,
  }) = _AddTransactionStateModel;
}
