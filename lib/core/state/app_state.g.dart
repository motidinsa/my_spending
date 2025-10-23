// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppState)
const appStateProvider = AppStateProvider._();

final class AppStateProvider
    extends $AsyncNotifierProvider<AppState, AppStateModel> {
  const AppStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appStateHash();

  @$internal
  @override
  AppState create() => AppState();
}

String _$appStateHash() => r'bd87ca267f425cd50acc6e382cec11c692fe8e59';

abstract class _$AppState extends $AsyncNotifier<AppStateModel> {
  FutureOr<AppStateModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<AppStateModel>, AppStateModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AppStateModel>, AppStateModel>,
              AsyncValue<AppStateModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
