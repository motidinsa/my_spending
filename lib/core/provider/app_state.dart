import 'package:my_spending/core/model/app_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_state.g.dart';

@riverpod
class AppState extends _$AppState {
  @override
  AppModel build() {
    return AppModel(selectedIndex: 0);
  }

  void updateIndex(int index) {
    state = state.copyWith(selectedIndex: index);
  }
}
