import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_spending/add_account_group/model/account_group_model.dart';

part 'add_account_state_model.freezed.dart';

@freezed
abstract class AddAccountStateModel with _$AddAccountStateModel {
  const factory AddAccountStateModel({
    String? groupName,
    @Default([]) List<AccountGroupModel> accountGroupModels,
    bool? isAccountGroupsLoading,
  }) = _AddAccountStateModel;
}
