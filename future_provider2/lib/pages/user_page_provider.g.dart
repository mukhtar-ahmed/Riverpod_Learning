// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userHash() => r'a050d9cbca5ce44797a5bfddf28f78b7e4b63966';

/// See also [user].
@ProviderFor(user)
final userProvider = AutoDisposeFutureProvider<List<User>>.internal(
  user,
  name: r'userProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserRef = AutoDisposeFutureProviderRef<List<User>>;
String _$userDetailsHash() => r'250611eb7c580c7824cb3916d5bb0e586a4984a3';

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

/// See also [userDetails].
@ProviderFor(userDetails)
const userDetailsProvider = UserDetailsFamily();

/// See also [userDetails].
class UserDetailsFamily extends Family<AsyncValue<User>> {
  /// See also [userDetails].
  const UserDetailsFamily();

  /// See also [userDetails].
  UserDetailsProvider call(int id) {
    return UserDetailsProvider(id);
  }

  @override
  UserDetailsProvider getProviderOverride(
    covariant UserDetailsProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userDetailsProvider';
}

/// See also [userDetails].
class UserDetailsProvider extends AutoDisposeFutureProvider<User> {
  /// See also [userDetails].
  UserDetailsProvider(int id)
    : this._internal(
        (ref) => userDetails(ref as UserDetailsRef, id),
        from: userDetailsProvider,
        name: r'userDetailsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$userDetailsHash,
        dependencies: UserDetailsFamily._dependencies,
        allTransitiveDependencies: UserDetailsFamily._allTransitiveDependencies,
        id: id,
      );

  UserDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<User> Function(UserDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserDetailsProvider._internal(
        (ref) => create(ref as UserDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<User> createElement() {
    return _UserDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDetailsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserDetailsRef on AutoDisposeFutureProviderRef<User> {
  /// The parameter `id` of this provider.
  int get id;
}

class _UserDetailsProviderElement extends AutoDisposeFutureProviderElement<User>
    with UserDetailsRef {
  _UserDetailsProviderElement(super.provider);

  @override
  int get id => (origin as UserDetailsProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
