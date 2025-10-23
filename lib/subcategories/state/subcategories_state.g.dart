// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategories_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SubcategoriesState)
const subcategoriesStateProvider = SubcategoriesStateFamily._();

final class SubcategoriesStateProvider
    extends
        $StreamNotifierProvider<SubcategoriesState, List<SubcategoryModel>> {
  const SubcategoriesStateProvider._({
    required SubcategoriesStateFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'subcategoriesStateProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$subcategoriesStateHash();

  @override
  String toString() {
    return r'subcategoriesStateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SubcategoriesState create() => SubcategoriesState();

  @override
  bool operator ==(Object other) {
    return other is SubcategoriesStateProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$subcategoriesStateHash() =>
    r'687322aa9862ce5c9ad91f4da719ea8045e9598f';

final class SubcategoriesStateFamily extends $Family
    with
        $ClassFamilyOverride<
          SubcategoriesState,
          AsyncValue<List<SubcategoryModel>>,
          List<SubcategoryModel>,
          Stream<List<SubcategoryModel>>,
          String
        > {
  const SubcategoriesStateFamily._()
    : super(
        retry: null,
        name: r'subcategoriesStateProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SubcategoriesStateProvider call(String categoryId) =>
      SubcategoriesStateProvider._(argument: categoryId, from: this);

  @override
  String toString() => r'subcategoriesStateProvider';
}

abstract class _$SubcategoriesState
    extends $StreamNotifier<List<SubcategoryModel>> {
  late final _$args = ref.$arg as String;
  String get categoryId => _$args;

  Stream<List<SubcategoryModel>> build(String categoryId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<SubcategoryModel>>, List<SubcategoryModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<SubcategoryModel>>,
                List<SubcategoryModel>
              >,
              AsyncValue<List<SubcategoryModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
