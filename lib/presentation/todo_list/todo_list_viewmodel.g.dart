// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoListViewModelHash() => r'98d4cef63dff16af3448e15db02a0a2ba84e11b1';

/// Derives the Home screen's grouped/filtered view of the task list, the
/// same shape `renderVals()` computes in the design prototype. Wrapped in
/// `AsyncValue` since the underlying task list now streams from Firestore.
///
/// Copied from [todoListViewModel].
@ProviderFor(todoListViewModel)
final todoListViewModelProvider =
    AutoDisposeProvider<AsyncValue<TodoListData>>.internal(
      todoListViewModel,
      name: r'todoListViewModelProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$todoListViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TodoListViewModelRef = AutoDisposeProviderRef<AsyncValue<TodoListData>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
