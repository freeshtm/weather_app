// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherHash() => r'2972a63844a0c0812f08b18e13b3e7ac9a6a7ff0';

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

/// See also [weather].
@ProviderFor(weather)
const weatherProvider = WeatherFamily();

/// See also [weather].
class WeatherFamily extends Family<AsyncValue<WeatherData>> {
  /// See also [weather].
  const WeatherFamily();

  /// See also [weather].
  WeatherProvider call({
    required String city,
  }) {
    return WeatherProvider(
      city: city,
    );
  }

  @override
  WeatherProvider getProviderOverride(
    covariant WeatherProvider provider,
  ) {
    return call(
      city: provider.city,
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
  String? get name => r'weatherProvider';
}

/// See also [weather].
class WeatherProvider extends AutoDisposeFutureProvider<WeatherData> {
  /// See also [weather].
  WeatherProvider({
    required String city,
  }) : this._internal(
          (ref) => weather(
            ref as WeatherRef,
            city: city,
          ),
          from: weatherProvider,
          name: r'weatherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherHash,
          dependencies: WeatherFamily._dependencies,
          allTransitiveDependencies: WeatherFamily._allTransitiveDependencies,
          city: city,
        );

  WeatherProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.city,
  }) : super.internal();

  final String city;

  @override
  Override overrideWith(
    FutureOr<WeatherData> Function(WeatherRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WeatherProvider._internal(
        (ref) => create(ref as WeatherRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        city: city,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<WeatherData> createElement() {
    return _WeatherProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherProvider && other.city == city;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, city.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WeatherRef on AutoDisposeFutureProviderRef<WeatherData> {
  /// The parameter `city` of this provider.
  String get city;
}

class _WeatherProviderElement
    extends AutoDisposeFutureProviderElement<WeatherData> with WeatherRef {
  _WeatherProviderElement(super.provider);

  @override
  String get city => (origin as WeatherProvider).city;
}

String _$suggestionsHash() => r'e62d38ef990affc04df15b8c97064b2b8833b5e3';

/// See also [suggestions].
@ProviderFor(suggestions)
const suggestionsProvider = SuggestionsFamily();

/// See also [suggestions].
class SuggestionsFamily extends Family<AsyncValue<List<String>>> {
  /// See also [suggestions].
  const SuggestionsFamily();

  /// See also [suggestions].
  SuggestionsProvider call({
    required String city,
  }) {
    return SuggestionsProvider(
      city: city,
    );
  }

  @override
  SuggestionsProvider getProviderOverride(
    covariant SuggestionsProvider provider,
  ) {
    return call(
      city: provider.city,
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
  String? get name => r'suggestionsProvider';
}

/// See also [suggestions].
class SuggestionsProvider extends AutoDisposeFutureProvider<List<String>> {
  /// See also [suggestions].
  SuggestionsProvider({
    required String city,
  }) : this._internal(
          (ref) => suggestions(
            ref as SuggestionsRef,
            city: city,
          ),
          from: suggestionsProvider,
          name: r'suggestionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$suggestionsHash,
          dependencies: SuggestionsFamily._dependencies,
          allTransitiveDependencies:
              SuggestionsFamily._allTransitiveDependencies,
          city: city,
        );

  SuggestionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.city,
  }) : super.internal();

  final String city;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(SuggestionsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SuggestionsProvider._internal(
        (ref) => create(ref as SuggestionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        city: city,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _SuggestionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SuggestionsProvider && other.city == city;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, city.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SuggestionsRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `city` of this provider.
  String get city;
}

class _SuggestionsProviderElement
    extends AutoDisposeFutureProviderElement<List<String>> with SuggestionsRef {
  _SuggestionsProviderElement(super.provider);

  @override
  String get city => (origin as SuggestionsProvider).city;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
