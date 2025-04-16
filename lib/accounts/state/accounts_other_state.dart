import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'accounts_other_state.g.dart';

@riverpod
class AccountsOtherState extends _$AccountsOtherState {
  ScrollController scrollController = ScrollController();

  @override
  bool build() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        state = false;
      } else {
        state = true;
      }
    });
    return true;
  }
}
