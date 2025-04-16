// import 'package:my_spending/accounts/functions/accounts_function.dart';
// import 'package:my_spending/accounts/repository/isar_accounts_repository.dart';
// import 'package:my_spending/add_account_group/model/account_group_model.dart';
// import 'package:my_spending/core/model/account_model.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
//
// part 'accounts_state.g.dart';
//
// @riverpod
// class AccountsState extends _$AccountsState {
//   IsarAccountsRepository isarAccountsRepository = IsarAccountsRepository();
//
//   @override
//   FutureOr<List<List<AccountModel>>> build() async {
//     return getGroupedAccounts(
//       await isarAccountsRepository.getAllAccountLists(),
//     );
//   }
//
//   void reorderAccounts(int oldIndex, int newIndex) {
//     IsarAccountsRepository isarAccountsRepository = IsarAccountsRepository();
//     final item = state.value?.removeAt(oldIndex);
//     state.value?.insert(newIndex, item!);
//     state = AsyncData(state.value!);
//     List<AccountGroupModel> accountGroupModels = [];
//     if (state.value != null) {
//       for (int i = 0; i < state.value!.length; i++) {
//         final AccountGroupModel accountGroupModel =
//             isarAccountsRepository.getAccountGroupModel(
//               state.value![i].first.groupId,
//             )!;
//         accountGroupModels.add(accountGroupModel.copyWith(sortIndex: i));
//       }
//       isarAccountsRepository.updateAccountGroupSortIndex(accountGroupModels);
//     }
//   }
//
//   Future<void> updateAccountLists() async {
//     try {
//       state = AsyncData(
//         getGroupedAccounts(await isarAccountsRepository.getAllAccountLists()),
//       );
//     } on Exception {
//       // state = AsyncData(state.value!);
//     }
//   }
// }
