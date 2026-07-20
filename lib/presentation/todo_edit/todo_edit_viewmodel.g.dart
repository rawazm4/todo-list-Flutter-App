// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_edit_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoEditDraftNotifierHash() =>
    r'b0170e863aecb5db248c0a90d49a8c25d840d918';

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

abstract class _$TodoEditDraftNotifier
    extends BuildlessAutoDisposeNotifier<TodoDraft> {
  late final String? editingId;

  TodoDraft build(String? editingId);
}

/// Draft form state for the Add/Edit screen, keyed by the task being edited
/// (`null` = creating a new task) — mirrors the prototype's single `isAdd`
/// screen with an `editingId`.
///
/// Copied from [TodoEditDraftNotifier].
@ProviderFor(TodoEditDraftNotifier)
const todoEditDraftNotifierProvider = TodoEditDraftNotifierFamily();

/// Draft form state for the Add/Edit screen, keyed by the task being edited
/// (`null` = creating a new task) — mirrors the prototype's single `isAdd`
/// screen with an `editingId`.
///
/// Copied from [TodoEditDraftNotifier].
class TodoEditDraftNotifierFamily extends Family<TodoDraft> {
  /// Draft form state for the Add/Edit screen, keyed by the task being edited
  /// (`null` = creating a new task) — mirrors the prototype's single `isAdd`
  /// screen with an `editingId`.
  ///
  /// Copied from [TodoEditDraftNotifier].
  const TodoEditDraftNotifierFamily();

  /// Draft form state for the Add/Edit screen, keyed by the task being edited
  /// (`null` = creating a new task) — mirrors the prototype's single `isAdd`
  /// screen with an `editingId`.
  ///
  /// Copied from [TodoEditDraftNotifier].
  TodoEditDraftNotifierProvider call(String? editingId) {
    return TodoEditDraftNotifierProvider(editingId);
  }

  @override
  TodoEditDraftNotifierProvider getProviderOverride(
    covariant TodoEditDraftNotifierProvider provider,
  ) {
    return call(provider.editingId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'todoEditDraftNotifierProvider';
}

/// Draft form state for the Add/Edit screen, keyed by the task being edited
/// (`null` = creating a new task) — mirrors the prototype's single `isAdd`
/// screen with an `editingId`.
///
/// Copied from [TodoEditDraftNotifier].
class TodoEditDraftNotifierProvider
    extends AutoDisposeNotifierProviderImpl<TodoEditDraftNotifier, TodoDraft> {
  /// Draft form state for the Add/Edit screen, keyed by the task being edited
  /// (`null` = creating a new task) — mirrors the prototype's single `isAdd`
  /// screen with an `editingId`.
  ///
  /// Copied from [TodoEditDraftNotifier].
  TodoEditDraftNotifierProvider(String? editingId)
    : this._internal(
        () => TodoEditDraftNotifier()..editingId = editingId,
        from: todoEditDraftNotifierProvider,
        name: r'todoEditDraftNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$todoEditDraftNotifierHash,
        dependencies: TodoEditDraftNotifierFamily._dependencies,
        allTransitiveDependencies:
            TodoEditDraftNotifierFamily._allTransitiveDependencies,
        editingId: editingId,
      );

  TodoEditDraftNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.editingId,
  }) : super.internal();

  final String? editingId;

  @override
  TodoDraft runNotifierBuild(covariant TodoEditDraftNotifier notifier) {
    return notifier.build(editingId);
  }

  @override
  Override overrideWith(TodoEditDraftNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodoEditDraftNotifierProvider._internal(
        () => create()..editingId = editingId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        editingId: editingId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<TodoEditDraftNotifier, TodoDraft>
  createElement() {
    return _TodoEditDraftNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoEditDraftNotifierProvider &&
        other.editingId == editingId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, editingId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TodoEditDraftNotifierRef on AutoDisposeNotifierProviderRef<TodoDraft> {
  /// The parameter `editingId` of this provider.
  String? get editingId;
}

class _TodoEditDraftNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<TodoEditDraftNotifier, TodoDraft>
    with TodoEditDraftNotifierRef {
  _TodoEditDraftNotifierProviderElement(super.provider);

  @override
  String? get editingId => (origin as TodoEditDraftNotifierProvider).editingId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
