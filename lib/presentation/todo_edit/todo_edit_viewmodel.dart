import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/todo_model.dart';
import '../../providers/todo_providers.dart';

part 'todo_edit_viewmodel.freezed.dart';
part 'todo_edit_viewmodel.g.dart';

@freezed
class TodoDraft with _$TodoDraft {
  const factory TodoDraft({
    @Default('') String title,
    @Default('work') String categoryId,
    @Default('') String dueLabel,
    @Default(false) bool reminder,
    @Default('') String notes,
  }) = _TodoDraft;

  const TodoDraft._();

  bool get canSave => title.trim().isNotEmpty;
}

/// Draft form state for the Add/Edit screen, keyed by the task being edited
/// (`null` = creating a new task) — mirrors the prototype's single `isAdd`
/// screen with an `editingId`.
@riverpod
class TodoEditDraftNotifier extends _$TodoEditDraftNotifier {
  @override
  TodoDraft build(String? editingId) {
    if (editingId == null) return const TodoDraft();
    final tasks = ref.watch(tasksNotifierProvider).valueOrNull ?? const [];
    for (final t in tasks) {
      if (t.id == editingId) {
        return TodoDraft(
          title: t.title,
          categoryId: t.categoryId,
          dueLabel: t.dueLabel,
          reminder: t.reminder,
          notes: t.notes,
        );
      }
    }
    return const TodoDraft();
  }

  void setTitle(String value) => state = state.copyWith(title: value);
  void setCategory(String id) => state = state.copyWith(categoryId: id);
  void setDue(String value) => state = state.copyWith(dueLabel: value);
  void setReminder(bool value) => state = state.copyWith(reminder: value);
  void setNotes(String value) => state = state.copyWith(notes: value);

  Future<void> save() async {
    final notifier = ref.read(tasksNotifierProvider.notifier);
    if (editingId != null) {
      final tasks = ref.read(tasksNotifierProvider).valueOrNull ?? const [];
      final existing = tasks.firstWhere((t) => t.id == editingId);
      await notifier.updateTask(
        existing.copyWith(
          title: state.title,
          categoryId: state.categoryId,
          dueLabel: state.dueLabel,
          reminder: state.reminder,
          notes: state.notes,
        ),
      );
    } else {
      // Firestore assigns the doc ID on add(); this id is discarded by
      // TaskModel.toFirestore() and never sent.
      await notifier.addTask(
        TaskModel(
          id: '',
          title: state.title,
          categoryId: state.categoryId,
          group: TaskGroup.today,
          dueLabel: state.dueLabel,
          reminder: state.reminder,
          notes: state.notes,
        ),
      );
    }
  }
}
