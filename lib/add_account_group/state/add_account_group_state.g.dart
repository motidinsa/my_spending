// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_account_group_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddAccountGroupState)
const addAccountGroupStateProvider = AddAccountGroupStateProvider._();

final class AddAccountGroupStateProvider
    extends $NotifierProvider<AddAccountGroupState, AddAccountGroupStateModel> {
  const AddAccountGroupStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addAccountGroupStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addAccountGroupStateHash();

  @$internal
  @override
  AddAccountGroupState create() => AddAccountGroupState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddAccountGroupStateModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddAccountGroupStateModel>(value),
    );
  }
}

String _$addAccountGroupStateHash() =>
    r'fa4fbaaceec3fc419478c2a2a268d0c1fd942ccc';

abstract class _$AddAccountGroupState
    extends $Notifier<AddAccountGroupStateModel> {
  AddAccountGroupStateModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AddAccountGroupStateModel, AddAccountGroupStateModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AddAccountGroupStateModel, AddAccountGroupStateModel>,
              AddAccountGroupStateModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
