// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_transaction_category_list_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddTransactionCategoryListState)
const addTransactionCategoryListStateProvider =
    AddTransactionCategoryListStateProvider._();

final class AddTransactionCategoryListStateProvider
    extends
        $AsyncNotifierProvider<
          AddTransactionCategoryListState,
          List<CategoryModel>
        > {
  const AddTransactionCategoryListStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addTransactionCategoryListStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addTransactionCategoryListStateHash();

  @$internal
  @override
  AddTransactionCategoryListState create() => AddTransactionCategoryListState();
}

String _$addTransactionCategoryListStateHash() =>
    r'22c784ccbf960778d6c68c1e6db1008f6887cd9f';

abstract class _$AddTransactionCategoryListState
    extends $AsyncNotifier<List<CategoryModel>> {
  FutureOr<List<CategoryModel>> build();
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
