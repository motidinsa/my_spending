// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_transaction_account_list_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddTransactionAccountListState)
const addTransactionAccountListStateProvider =
    AddTransactionAccountListStateProvider._();

final class AddTransactionAccountListStateProvider
    extends
        $AsyncNotifierProvider<
          AddTransactionAccountListState,
          List<AccountGroupModel>
        > {
  const AddTransactionAccountListStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addTransactionAccountListStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addTransactionAccountListStateHash();

  @$internal
  @override
  AddTransactionAccountListState create() => AddTransactionAccountListState();
}

String _$addTransactionAccountListStateHash() =>
    r'8423db3b513a893fd6d3529cbd5866a1130bafaf';

abstract class _$AddTransactionAccountListState
    extends $AsyncNotifier<List<AccountGroupModel>> {
  FutureOr<List<AccountGroupModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<AccountGroupModel>>,
              List<AccountGroupModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<AccountGroupModel>>,
                List<AccountGroupModel>
              >,
              AsyncValue<List<AccountGroupModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
