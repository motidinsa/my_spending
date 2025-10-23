// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategoriesState)
const categoriesStateProvider = CategoriesStateProvider._();

final class CategoriesStateProvider
    extends $StreamNotifierProvider<CategoriesState, List<CategoryModel>> {
  const CategoriesStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoriesStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoriesStateHash();

  @$internal
  @override
  CategoriesState create() => CategoriesState();
}

String _$categoriesStateHash() => r'7071081596ddab74cc6a954ae791e3338dc0d75a';

abstract class _$CategoriesState extends $StreamNotifier<List<CategoryModel>> {
  Stream<List<CategoryModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<CategoryModel>>, List<CategoryModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<CategoryModel>>, List<CategoryModel>>,
              AsyncValue<List<CategoryModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
