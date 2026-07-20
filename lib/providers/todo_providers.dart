import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/models/todo_model.dart';
import 'repository_providers.dart';

part 'todo_providers.g.dart';

@riverpod
List<CategoryModel> categories(CategoriesRef ref) {
  return ref.watch(todoRepositoryProvider).getCategories();
}

@riverpod
class TasksNotifier extends _$TasksNotifier {
  @override
  Stream<List<TaskModel>> build() =>
      ref.watch(todoRepositoryProvider).watchTasks();

  Future<void> addTask(TaskModel task) =>
      ref.read(todoRepositoryProvider).addTask(task);

  Future<void> updateTask(TaskModel task) =>
      ref.read(todoRepositoryProvider).updateTask(task);

  Future<void> toggleDone(String id) =>
      ref.read(todoRepositoryProvider).toggleDone(id);

  Future<void> deleteTask(String id) =>
      ref.read(todoRepositoryProvider).deleteTask(id);
}

/// The currently active category filter on the Home/Categories screens
/// (`null` = no filter). Transient UI state, kept separate from task data.
@riverpod
class CategoryFilter extends _$CategoryFilter {
  @override
  String? build() => null;

  void toggle(String id) => state = state == id ? null : id;

  void set(String? id) => state = id;
}
