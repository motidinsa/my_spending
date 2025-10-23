// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AccountsState)
const accountsStateProvider = AccountsStateProvider._();

final class AccountsStateProvider
    extends $AsyncNotifierProvider<AccountsState, List<List<AccountModel>>> {
  const AccountsStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountsStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountsStateHash();

  @$internal
  @override
  AccountsState create() => AccountsState();
}

String _$accountsStateHash() => r'f1dc8ac0934d3aebf82b5a36da7a8bf4ef7ede43';

abstract class _$AccountsState
    extends $AsyncNotifier<List<List<AccountModel>>> {
  FutureOr<List<List<AccountModel>>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<List<AccountModel>>>,
              List<List<AccountModel>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<List<AccountModel>>>,
                List<List<AccountModel>>
              >,
              AsyncValue<List<List<AccountModel>>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
