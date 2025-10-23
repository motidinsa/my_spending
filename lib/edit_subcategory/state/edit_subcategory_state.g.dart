// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_subcategory_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditSubcategoryState)
const editSubcategoryStateProvider = EditSubcategoryStateProvider._();

final class EditSubcategoryStateProvider
    extends $NotifierProvider<EditSubcategoryState, EditSubcategoryStateModel> {
  const EditSubcategoryStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editSubcategoryStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editSubcategoryStateHash();

  @$internal
  @override
  EditSubcategoryState create() => EditSubcategoryState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditSubcategoryStateModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditSubcategoryStateModel>(value),
    );
  }
}

String _$editSubcategoryStateHash() =>
    r'da544f86a8935a42905fad8f7c82316ced87079b';

abstract class _$EditSubcategoryState
    extends $Notifier<EditSubcategoryStateModel> {
  EditSubcategoryStateModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<EditSubcategoryStateModel, EditSubcategoryStateModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditSubcategoryStateModel, EditSubcategoryStateModel>,
              EditSubcategoryStateModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
