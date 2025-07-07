// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'b68c7364169e91af780c7f27c3d198481337a389';

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

abstract class _$Counter extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final int initial;

  FutureOr<int> build(int initial);
}

/// See also [Counter].
@ProviderFor(Counter)
const counterProvider = CounterFamily();

/// See also [Counter].
class CounterFamily extends Family<AsyncValue<int>> {
  /// See also [Counter].
  const CounterFamily();

  /// See also [Counter].
  CounterProvider call(int initial) {
    return CounterProvider(initial);
  }

  @override
  CounterProvider getProviderOverride(covariant CounterProvider provider) {
    return call(provider.initial);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'counterProvider';
}

/// See also [Counter].
class CounterProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Counter, int> {
  /// See also [Counter].
  CounterProvider(int initial)
    : this._internal(
        () => Counter()..initial = initial,
        from: counterProvider,
        name: r'counterProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$counterHash,
        dependencies: CounterFamily._dependencies,
        allTransitiveDependencies: CounterFamily._allTransitiveDependencies,
        initial: initial,
      );

  CounterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initial,
  }) : super.internal();

  final int initial;

  @override
  FutureOr<int> runNotifierBuild(covariant Counter notifier) {
    return notifier.build(initial);
  }

  @override
  Override overrideWith(Counter Function() create) {
    return ProviderOverride(
      origin: this,
      override: CounterProvider._internal(
        () => create()..initial = initial,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initial: initial,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Counter, int> createElement() {
    return _CounterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CounterProvider && other.initial == initial;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initial.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CounterRef on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `initial` of this provider.
  int get initial;
}

class _CounterProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Counter, int>
    with CounterRef {
  _CounterProviderElement(super.provider);

  @override
  int get initial => (origin as CounterProvider).initial;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
