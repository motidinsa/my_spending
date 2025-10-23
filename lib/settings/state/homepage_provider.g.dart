// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Homepage)
const homepageProvider = HomepageProvider._();

final class HomepageProvider extends $NotifierProvider<Homepage, int> {
  const HomepageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homepageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homepageHash();

  @$internal
  @override
  Homepage create() => Homepage();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$homepageHash() => r'8a6bd5e5dc1ead804f9eb903b21220640d629ec3';

abstract class _$Homepage extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
