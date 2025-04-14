import 'package:my_spending/add_account/model/add_account_state_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_account_state.g.dart';

@riverpod
class AddAccountState extends _$AddAccountState {
  String accountName = '';
  String amount = '';
  String description = '';

  @override
  AddAccountStateModel build() {
    return AddAccountStateModel();
  }

  void setAccountGroupName(String name) {
    state = state.copyWith(groupName: name);
  }

  void addNameFocus() {
    state = state.copyWith(hasNameFocus: true,hasAmountFocus: false);
  }

  void addAmountFocus() {
    state = state.copyWith(hasAmountFocus: true,hasNameFocus: false);
  }

  void setAccountName(String name) {
    accountName = name;
  }

  void setAmount(String value) {
    amount = value;
  }

  void setDescription(String value) {
    description = value;
  }
}
