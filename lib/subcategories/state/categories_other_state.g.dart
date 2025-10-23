// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_other_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategoriesOtherState)
const categoriesOtherStateProvider = CategoriesOtherStateProvider._();

final class CategoriesOtherStateProvider
    extends $NotifierProvider<CategoriesOtherState, bool> {
  const CategoriesOtherStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoriesOtherStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoriesOtherStateHash();

  @$internal
  @override
  CategoriesOtherState create() => CategoriesOtherState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$categoriesOtherStateHash() =>
    r'0287f834da963967f9973ff6a228babf8a77e7cb';

abstract class _$CategoriesOtherState extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
