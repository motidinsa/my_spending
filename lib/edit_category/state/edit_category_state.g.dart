// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_category_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditCategoryState)
const editCategoryStateProvider = EditCategoryStateProvider._();

final class EditCategoryStateProvider
    extends $NotifierProvider<EditCategoryState, EditCategoryStateModel> {
  const EditCategoryStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editCategoryStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editCategoryStateHash();

  @$internal
  @override
  EditCategoryState create() => EditCategoryState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditCategoryStateModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditCategoryStateModel>(value),
    );
  }
}

String _$editCategoryStateHash() => r'500a1420487483df0ab310f7fa41b9478a2e6e10';

abstract class _$EditCategoryState extends $Notifier<EditCategoryStateModel> {
  EditCategoryStateModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<EditCategoryStateModel, EditCategoryStateModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditCategoryStateModel, EditCategoryStateModel>,
              EditCategoryStateModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
