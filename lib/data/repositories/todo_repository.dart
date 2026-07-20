import '../models/todo_model.dart';

/// Boundary between the todo data layer and presentation, mirroring the
/// `AuthRepository` pattern (see `auth_repository.dart`). Tasks are backed
/// by Firestore (real-time, hence the stream); categories are a fixed local
/// list, so they stay synchronous.
abstract class TodoRepository {
  List<CategoryModel> getCategories();

  Stream<List<TaskModel>> watchTasks();

  Future<void> addTask(TaskModel task);

  Future<void> updateTask(TaskModel task);

  Future<void> toggleDone(String id);

  Future<void> deleteTask(String id);
}
