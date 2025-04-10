import 'package:my_spending/add_account_group/model/add_account_group_state_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_account_group_state.g.dart';

@riverpod
class AddAccountGroupState extends _$AddAccountGroupState {
  @override
  AddAccountGroupStateModel build() {
    return AddAccountGroupStateModel(groupName: '');
  }

  void updateValue(String value) {
    state = state.copyWith(groupName: value);
  }
  void updateSaveButtonPressedStatus() {
    state = state.copyWith(isSaveButtonPressed: true);
  }
}
