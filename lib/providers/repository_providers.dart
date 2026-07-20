import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/datasources/local/todo_local_datasource.dart';
import '../data/datasources/remote/todo_remote_datasource.dart';
import '../data/repositories/todo_repository.dart';
import '../data/repositories/todo_repository_impl.dart';

part 'repository_providers.g.dart';

@Riverpod(keepAlive: true)
TodoLocalDataSource todoLocalDataSource(TodoLocalDataSourceRef ref) =>
    TodoLocalDataSource();

@Riverpod(keepAlive: true)
TodoRemoteDataSource todoRemoteDataSource(TodoRemoteDataSourceRef ref) {
  return TodoRemoteDataSource(firestore: FirebaseFirestore.instance);
}

@Riverpod(keepAlive: true)
TodoRepository todoRepository(TodoRepositoryRef ref) {
  return TodoRepositoryImpl(
    localDataSource: ref.watch(todoLocalDataSourceProvider),
    remoteDataSource: ref.watch(todoRemoteDataSourceProvider),
  );
}
