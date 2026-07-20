import '../datasources/local/todo_local_datasource.dart';
import '../datasources/remote/todo_remote_datasource.dart';
import '../models/todo_model.dart';
import 'todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl({
    required TodoLocalDataSource localDataSource,
    required TodoRemoteDataSource remoteDataSource,
  }) : _localDataSource = localDataSource,
       _remoteDataSource = remoteDataSource;

  final TodoLocalDataSource _localDataSource;
  final TodoRemoteDataSource _remoteDataSource;

  @override
  List<CategoryModel> getCategories() => _localDataSource.getCategories();

  @override
  Stream<List<TaskModel>> watchTasks() => _remoteDataSource.watchTasks();

  @override
  Future<void> addTask(TaskModel task) => _remoteDataSource.addTask(task);

  @override
  Future<void> updateTask(TaskModel task) => _remoteDataSource.updateTask(task);

  @override
  Future<void> toggleDone(String id) async {
    final task = await _remoteDataSource.getTask(id);
    if (task == null) return;
    await _remoteDataSource.updateTask(
      task.copyWith(
        done: !task.done,
        completedLabel: !task.done ? 'Just now' : task.completedLabel,
      ),
    );
  }

  @override
  Future<void> deleteTask(String id) => _remoteDataSource.deleteTask(id);
}
