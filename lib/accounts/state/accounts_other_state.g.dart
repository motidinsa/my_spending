// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_other_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AccountsOtherState)
const accountsOtherStateProvider = AccountsOtherStateProvider._();

final class AccountsOtherStateProvider
    extends $NotifierProvider<AccountsOtherState, bool> {
  const AccountsOtherStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountsOtherStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountsOtherStateHash();

  @$internal
  @override
  AccountsOtherState create() => AccountsOtherState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$accountsOtherStateHash() =>
    r'0c78004f1a186a4fd13f0a630c70cca0f7ae5f40';

abstract class _$AccountsOtherState extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
