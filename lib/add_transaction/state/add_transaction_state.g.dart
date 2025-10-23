// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_transaction_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddTransactionState)
const addTransactionStateProvider = AddTransactionStateProvider._();

final class AddTransactionStateProvider
    extends $NotifierProvider<AddTransactionState, AddTransactionStateModel> {
  const AddTransactionStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addTransactionStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addTransactionStateHash();

  @$internal
  @override
  AddTransactionState create() => AddTransactionState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddTransactionStateModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddTransactionStateModel>(value),
    );
  }
}

String _$addTransactionStateHash() =>
    r'051474463897110fbf5dca3f63fe208ae4b509cc';

abstract class _$AddTransactionState
    extends $Notifier<AddTransactionStateModel> {
  AddTransactionStateModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AddTransactionStateModel, AddTransactionStateModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AddTransactionStateModel, AddTransactionStateModel>,
              AddTransactionStateModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
