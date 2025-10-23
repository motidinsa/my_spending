// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_subcategory_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddSubcategoryState)
const addSubcategoryStateProvider = AddSubcategoryStateProvider._();

final class AddSubcategoryStateProvider
    extends $NotifierProvider<AddSubcategoryState, AddSubcategoryStateModel> {
  const AddSubcategoryStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addSubcategoryStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addSubcategoryStateHash();

  @$internal
  @override
  AddSubcategoryState create() => AddSubcategoryState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddSubcategoryStateModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddSubcategoryStateModel>(value),
    );
  }
}

String _$addSubcategoryStateHash() =>
    r'ff04b9a1d454b01a1910b6406b2155298935b260';

abstract class _$AddSubcategoryState
    extends $Notifier<AddSubcategoryStateModel> {
  AddSubcategoryStateModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AddSubcategoryStateModel, AddSubcategoryStateModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AddSubcategoryStateModel, AddSubcategoryStateModel>,
              AddSubcategoryStateModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
