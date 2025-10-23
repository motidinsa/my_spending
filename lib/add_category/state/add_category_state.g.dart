// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_category_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddCategoryState)
const addCategoryStateProvider = AddCategoryStateProvider._();

final class AddCategoryStateProvider
    extends $NotifierProvider<AddCategoryState, AddCategoryStateModel> {
  const AddCategoryStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addCategoryStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addCategoryStateHash();

  @$internal
  @override
  AddCategoryState create() => AddCategoryState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddCategoryStateModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddCategoryStateModel>(value),
    );
  }
}

String _$addCategoryStateHash() => r'56cdd7bf5eae078be0e9533e406349291202fa82';

abstract class _$AddCategoryState extends $Notifier<AddCategoryStateModel> {
  AddCategoryStateModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AddCategoryStateModel, AddCategoryStateModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AddCategoryStateModel, AddCategoryStateModel>,
              AddCategoryStateModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
