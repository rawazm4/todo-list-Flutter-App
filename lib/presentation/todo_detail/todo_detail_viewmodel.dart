import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/todo_model.dart';
import '../../providers/todo_providers.dart';

part 'todo_detail_viewmodel.g.dart';

@riverpod
AsyncValue<TaskModel?> selectedTask(SelectedTaskRef ref, String taskId) {
  final tasksAsync = ref.watch(tasksNotifierProvider);
  return tasksAsync.whenData((tasks) {
    for (final t in tasks) {
      if (t.id == taskId) return t;
    }
    return null;
  });
}
