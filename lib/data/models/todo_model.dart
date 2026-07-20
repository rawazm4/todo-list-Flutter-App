import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/app_constants.dart';

part 'todo_model.freezed.dart';

/// When a task is due, relative to today — drives which section of the
/// Home screen it renders under.
enum TaskGroup { today, tomorrow, upcoming }

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String id,
    required String name,
    required CategoryColor color,
  }) = _CategoryModel;
}

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String id,
    required String title,
    required String categoryId,
    required TaskGroup group,
    required String dueLabel,
    @Default(false) bool reminder,
    @Default('') String notes,
    @Default(false) bool done,
    String? completedLabel,
  }) = _TaskModel;

  const TaskModel._();

  /// Firestore's doc ID is the source of truth for [id], so it's omitted here.
  Map<String, dynamic> toFirestore() {
    return {
      'title': title,
      'categoryId': categoryId,
      'group': group.name,
      'dueLabel': dueLabel,
      'reminder': reminder,
      'notes': notes,
      'done': done,
      'completedLabel': completedLabel,
    };
  }

  factory TaskModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data()!;
    return TaskModel(
      id: doc.id,
      title: data['title'] as String,
      categoryId: data['categoryId'] as String,
      group: TaskGroup.values.byName(data['group'] as String),
      dueLabel: data['dueLabel'] as String,
      reminder: data['reminder'] as bool? ?? false,
      notes: data['notes'] as String? ?? '',
      done: data['done'] as bool? ?? false,
      completedLabel: data['completedLabel'] as String?,
    );
  }
}
