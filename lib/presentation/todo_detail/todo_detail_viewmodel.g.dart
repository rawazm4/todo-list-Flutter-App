// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_detail_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedTaskHash() => r'30a10fc1d7b3afa1650f518660bc1914c9419edf';

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

/// See also [selectedTask].
@ProviderFor(selectedTask)
const selectedTaskProvider = SelectedTaskFamily();

/// See also [selectedTask].
class SelectedTaskFamily extends Family<AsyncValue<TaskModel?>> {
  /// See also [selectedTask].
  const SelectedTaskFamily();

  /// See also [selectedTask].
  SelectedTaskProvider call(String taskId) {
    return SelectedTaskProvider(taskId);
  }

  @override
  SelectedTaskProvider getProviderOverride(
    covariant SelectedTaskProvider provider,
  ) {
    return call(provider.taskId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'selectedTaskProvider';
}

/// See also [selectedTask].
class SelectedTaskProvider extends AutoDisposeProvider<AsyncValue<TaskModel?>> {
  /// See also [selectedTask].
  SelectedTaskProvider(String taskId)
    : this._internal(
        (ref) => selectedTask(ref as SelectedTaskRef, taskId),
        from: selectedTaskProvider,
        name: r'selectedTaskProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$selectedTaskHash,
        dependencies: SelectedTaskFamily._dependencies,
        allTransitiveDependencies:
            SelectedTaskFamily._allTransitiveDependencies,
        taskId: taskId,
      );

  SelectedTaskProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.taskId,
  }) : super.internal();

  final String taskId;

  @override
  Override overrideWith(
    AsyncValue<TaskModel?> Function(SelectedTaskRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SelectedTaskProvider._internal(
        (ref) => create(ref as SelectedTaskRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        taskId: taskId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<AsyncValue<TaskModel?>> createElement() {
    return _SelectedTaskProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedTaskProvider && other.taskId == taskId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SelectedTaskRef on AutoDisposeProviderRef<AsyncValue<TaskModel?>> {
  /// The parameter `taskId` of this provider.
  String get taskId;
}

class _SelectedTaskProviderElement
    extends AutoDisposeProviderElement<AsyncValue<TaskModel?>>
    with SelectedTaskRef {
  _SelectedTaskProviderElement(super.provider);

  @override
  String get taskId => (origin as SelectedTaskProvider).taskId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
