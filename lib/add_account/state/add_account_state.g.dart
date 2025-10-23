// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_account_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddAccountState)
const addAccountStateProvider = AddAccountStateProvider._();

final class AddAccountStateProvider
    extends $NotifierProvider<AddAccountState, AddAccountStateModel> {
  const AddAccountStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addAccountStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addAccountStateHash();

  @$internal
  @override
  AddAccountState create() => AddAccountState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddAccountStateModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddAccountStateModel>(value),
    );
  }
}

String _$addAccountStateHash() => r'd341fb0dd3eff294509ee37ee0c7b885302e3b70';

abstract class _$AddAccountState extends $Notifier<AddAccountStateModel> {
  AddAccountStateModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AddAccountStateModel, AddAccountStateModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AddAccountStateModel, AddAccountStateModel>,
              AddAccountStateModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
