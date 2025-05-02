import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';

part 'add_transaction_other_state_model.freezed.dart';

@freezed
abstract class AddTransactionOtherStateModel with _$AddTransactionOtherStateModel {
  const factory AddTransactionOtherStateModel({
    required List<AccountGroupModel> accountGroupModels,
  }) = _AddTransactionOtherStateModel;
}
