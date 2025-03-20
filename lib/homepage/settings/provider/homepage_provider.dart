import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'homepage_provider.g.dart';

@riverpod
class Homepage extends _$Homepage {
  @override
  int build() {
    return 0;
  }

  void updateIndex(int index) {
    state = index;
  }
}
