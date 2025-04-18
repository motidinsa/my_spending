import 'package:my_spending/core/model/app_model/app_state_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_state.g.dart';

@riverpod
class AppState extends _$AppState {
  @override
  Future<AppStateModel> build() async {
    // Future.microtask(() async {
    //   await setupInit();
    // });

    return AppStateModel();
  }
}
