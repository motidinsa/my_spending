// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategories_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$subcategoriesStateHash() =>
    r'9b3fff54205490abcb6d272a32f3b4e6c9b1b892';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SubcategoriesState
    extends BuildlessAutoDisposeStreamNotifier<List<SubcategoryModel>> {
  late final String categoryId;

  Stream<List<SubcategoryModel>> build(
    String categoryId,
  );
}

/// See also [SubcategoriesState].
@ProviderFor(SubcategoriesState)
const subcategoriesStateProvider = SubcategoriesStateFamily();

/// See also [SubcategoriesState].
class SubcategoriesStateFamily
    extends Family<AsyncValue<List<SubcategoryModel>>> {
  /// See also [SubcategoriesState].
  const SubcategoriesStateFamily();

  /// See also [SubcategoriesState].
  SubcategoriesStateProvider call(
    String categoryId,
  ) {
    return SubcategoriesStateProvider(
      categoryId,
    );
  }

  @override
  SubcategoriesStateProvider getProviderOverride(
    covariant SubcategoriesStateProvider provider,
  ) {
    return call(
      provider.categoryId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'subcategoriesStateProvider';
}

/// See also [SubcategoriesState].
class SubcategoriesStateProvider extends AutoDisposeStreamNotifierProviderImpl<
    SubcategoriesState, List<SubcategoryModel>> {
  /// See also [SubcategoriesState].
  SubcategoriesStateProvider(
    String categoryId,
  ) : this._internal(
          () => SubcategoriesState()..categoryId = categoryId,
          from: subcategoriesStateProvider,
          name: r'subcategoriesStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$subcategoriesStateHash,
          dependencies: SubcategoriesStateFamily._dependencies,
          allTransitiveDependencies:
              SubcategoriesStateFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  SubcategoriesStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final String categoryId;

  @override
  Stream<List<SubcategoryModel>> runNotifierBuild(
    covariant SubcategoriesState notifier,
  ) {
    return notifier.build(
      categoryId,
    );
  }

  @override
  Override overrideWith(SubcategoriesState Function() create) {
    return ProviderOverride(
      origin: this,
      override: SubcategoriesStateProvider._internal(
        () => create()..categoryId = categoryId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<SubcategoriesState,
      List<SubcategoryModel>> createElement() {
    return _SubcategoriesStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubcategoriesStateProvider &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SubcategoriesStateRef
    on AutoDisposeStreamNotifierProviderRef<List<SubcategoryModel>> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;
}

class _SubcategoriesStateProviderElement
    extends AutoDisposeStreamNotifierProviderElement<SubcategoriesState,
        List<SubcategoryModel>> with SubcategoriesStateRef {
  _SubcategoriesStateProviderElement(super.provider);

  @override
  String get categoryId => (origin as SubcategoriesStateProvider).categoryId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
