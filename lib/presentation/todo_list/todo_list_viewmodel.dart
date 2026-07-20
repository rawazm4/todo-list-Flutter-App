import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/todo_model.dart';
import '../../providers/todo_providers.dart';

part 'todo_list_viewmodel.freezed.dart';
part 'todo_list_viewmodel.g.dart';

@freezed
class TodoListData with _$TodoListData {
  const factory TodoListData({
    required int activeCount,
    required List<TaskModel> todayTasks,
    required List<TaskModel> tomorrowTasks,
    required List<TaskModel> upcomingTasks,
    required List<CategoryModel> categories,
    required Map<String, int> openCountByCategory,
    required String? filterCategory,
  }) = _TodoListData;

  const TodoListData._();

  bool get hasAnyActive => activeCount > 0;
}

/// Derives the Home screen's grouped/filtered view of the task list, the
/// same shape `renderVals()` computes in the design prototype. Wrapped in
/// `AsyncValue` since the underlying task list now streams from Firestore.
@riverpod
AsyncValue<TodoListData> todoListViewModel(TodoListViewModelRef ref) {
  final tasksAsync = ref.watch(tasksNotifierProvider);
  final categories = ref.watch(categoriesProvider);
  final filterCategory = ref.watch(categoryFilterProvider);

  return tasksAsync.whenData((tasks) {
    final visible = filterCategory == null
        ? tasks
        : tasks.where((t) => t.categoryId == filterCategory).toList();
    final active = visible.where((t) => !t.done).toList();

    final openCountByCategory = {
      for (final c in categories)
        c.id: tasks.where((t) => t.categoryId == c.id && !t.done).length,
    };

    return TodoListData(
      activeCount: active.length,
      todayTasks: active.where((t) => t.group == TaskGroup.today).toList(),
      tomorrowTasks: active
          .where((t) => t.group == TaskGroup.tomorrow)
          .toList(),
      upcomingTasks: active
          .where((t) => t.group == TaskGroup.upcoming)
          .toList(),
      categories: categories,
      openCountByCategory: openCountByCategory,
      filterCategory: filterCategory,
    );
  });
}
