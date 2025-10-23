// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_group_list_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AccountGroupListState)
const accountGroupListStateProvider = AccountGroupListStateProvider._();

final class AccountGroupListStateProvider
    extends
        $StreamNotifierProvider<
          AccountGroupListState,
          List<AccountGroupModel>
        > {
  const AccountGroupListStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountGroupListStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountGroupListStateHash();

  @$internal
  @override
  AccountGroupListState create() => AccountGroupListState();
}

String _$accountGroupListStateHash() =>
    r'3ccd07c53add5d7dbc7ab274bc15bc81058b701c';

abstract class _$AccountGroupListState
    extends $StreamNotifier<List<AccountGroupModel>> {
  Stream<List<AccountGroupModel>> build();
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
