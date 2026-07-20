// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoriesHash() => r'8ffa8903e04129a283e1abcd6560c7e74e6a87de';

/// See also [categories].
@ProviderFor(categories)
final categoriesProvider = AutoDisposeProvider<List<CategoryModel>>.internal(
  categories,
  name: r'categoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$categoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CategoriesRef = AutoDisposeProviderRef<List<CategoryModel>>;
String _$tasksNotifierHash() => r'3293048790eaeb414153149676a94653579cb193';

/// See also [TasksNotifier].
@ProviderFor(TasksNotifier)
final tasksNotifierProvider =
    AutoDisposeStreamNotifierProvider<TasksNotifier, List<TaskModel>>.internal(
      TasksNotifier.new,
      name: r'tasksNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$tasksNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$TasksNotifier = AutoDisposeStreamNotifier<List<TaskModel>>;
String _$categoryFilterHash() => r'e751df65f5d3409ce2fed9612a9399cc5df4a865';

/// The currently active category filter on the Home/Categories screens
/// (`null` = no filter). Transient UI state, kept separate from task data.
///
/// Copied from [CategoryFilter].
@ProviderFor(CategoryFilter)
final categoryFilterProvider =
    AutoDisposeNotifierProvider<CategoryFilter, String?>.internal(
      CategoryFilter.new,
      name: r'categoryFilterProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$categoryFilterHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CategoryFilter = AutoDisposeNotifier<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
