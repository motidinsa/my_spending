import 'package:my_spending/core/model/app_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_provider.g.dart';

@riverpod
class App extends _$App {
  @override
  AppModel build() {
    return AppModel(selectedIndex: 0);
  }

  // void updateIndex(int index) {
  //   state = index;
  // }
}
