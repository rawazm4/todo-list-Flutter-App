import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/todo_model.dart';

/// Firestore-backed source of truth for tasks — a top-level `tasks`
/// collection, no per-user scoping (auth is currently bypassed app-wide).
class TodoRemoteDataSource {
  TodoRemoteDataSource({required FirebaseFirestore firestore})
    : _tasks = firestore.collection('tasks');

  final CollectionReference<Map<String, dynamic>> _tasks;

  Stream<List<TaskModel>> watchTasks() {
    return _tasks.snapshots().map(
      (snapshot) => snapshot.docs.map(TaskModel.fromFirestore).toList(),
    );
  }

  Future<TaskModel?> getTask(String id) async {
    final doc = await _tasks.doc(id).get();
    return doc.exists ? TaskModel.fromFirestore(doc) : null;
  }

  Future<void> addTask(TaskModel task) => _tasks.add(task.toFirestore());

  Future<void> updateTask(TaskModel task) =>
      _tasks.doc(task.id).update(task.toFirestore());

  Future<void> deleteTask(String id) => _tasks.doc(id).delete();

  /// One-time seed so the collection isn't empty on first run. No-ops if
  /// the collection already has any documents.
  Future<void> seedIfEmpty(List<TaskModel> seed) async {
    final existing = await _tasks.limit(1).get();
    if (existing.docs.isNotEmpty) return;

    final batch = _tasks.firestore.batch();
    for (final task in seed) {
      batch.set(_tasks.doc(), task.toFirestore());
    }
    await batch.commit();
  }
}
