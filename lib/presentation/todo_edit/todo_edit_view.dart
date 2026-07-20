import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_constants.dart';
import '../../providers/todo_providers.dart';
import '../todo_list/widgets/category_chip.dart';
import 'todo_edit_viewmodel.dart';

class TodoEditView extends ConsumerStatefulWidget {
  const TodoEditView({super.key, this.editingId});

  final String? editingId;

  @override
  ConsumerState<TodoEditView> createState() => _TodoEditViewState();
}

class _TodoEditViewState extends ConsumerState<TodoEditView> {
  bool _saving = false;

  Future<void> _save(TodoEditDraftNotifier notifier) async {
    setState(() => _saving = true);
    await notifier.save();
    if (!mounted) return;
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final editingId = widget.editingId;
    final draft = ref.watch(todoEditDraftNotifierProvider(editingId));
    final notifier = ref.read(
      todoEditDraftNotifierProvider(editingId).notifier,
    );
    final categories = ref.watch(categoriesProvider);

    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: const Text(
                        '←',
                        style: TextStyle(fontSize: 20, color: AppColors.text),
                      ),
                    ),
                    Text(
                      editingId != null ? 'Edit Task' : 'New Task',
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.text,
                      ),
                    ),
                    TextButton(
                      onPressed: draft.canSave && !_saving
                          ? () => _save(notifier)
                          : null,
                      child: _saving
                          ? const SizedBox(
                              width: 15,
                              height: 15,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: AppColors.accent300,
                              ),
                            )
                          : Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 15,
                                color: draft.canSave
                                    ? AppColors.accent300
                                    : AppColors.neutral600,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const _FieldLabel('Title'),
              const SizedBox(height: 5),
              TextField(
                controller: TextEditingController(text: draft.title)
                  ..selection = TextSelection.collapsed(
                    offset: draft.title.length,
                  ),
                onChanged: notifier.setTitle,
                style: const TextStyle(fontSize: 14, color: AppColors.text),
                decoration: const InputDecoration(
                  hintText: 'What needs doing?',
                ),
              ),
              const SizedBox(height: 16),
              const _FieldLabel('Category'),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final c in categories)
                    CategoryChip(
                      category: c,
                      selected: draft.categoryId == c.id,
                      onTap: () => notifier.setCategory(c.id),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              const _FieldLabel('Due'),
              const SizedBox(height: 5),
              TextField(
                controller: TextEditingController(text: draft.dueLabel)
                  ..selection = TextSelection.collapsed(
                    offset: draft.dueLabel.length,
                  ),
                onChanged: notifier.setDue,
                style: const TextStyle(fontSize: 14, color: AppColors.text),
                decoration: const InputDecoration(
                  hintText: 'e.g. Today · 5:00 PM',
                ),
              ),
              const SizedBox(height: 16),
              const _FieldLabel('Reminder'),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: _SegmentOption(
                      label: 'Off',
                      selected: !draft.reminder,
                      onTap: () => notifier.setReminder(false),
                      isFirst: true,
                    ),
                  ),
                  Expanded(
                    child: _SegmentOption(
                      label: 'On',
                      selected: draft.reminder,
                      onTap: () => notifier.setReminder(true),
                      isFirst: false,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const _FieldLabel('Notes'),
              const SizedBox(height: 5),
              TextField(
                controller: TextEditingController(text: draft.notes)
                  ..selection = TextSelection.collapsed(
                    offset: draft.notes.length,
                  ),
                onChanged: notifier.setNotes,
                maxLines: 4,
                style: const TextStyle(fontSize: 14, color: AppColors.text),
                decoration: const InputDecoration(hintText: 'Add details…'),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 13, color: AppColors.neutral300),
    );
  }
}

class _SegmentOption extends StatelessWidget {
  const _SegmentOption({
    required this.label,
    required this.selected,
    required this.onTap,
    required this.isFirst,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
          border: Border.all(
            color: selected ? AppColors.accent : AppColors.divider,
          ),
          borderRadius: BorderRadius.horizontal(
            left: isFirst ? const Radius.circular(AppRadius.md) : Radius.zero,
            right: !isFirst ? const Radius.circular(AppRadius.md) : Radius.zero,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 13,
            color: selected ? AppColors.accent : AppColors.text,
          ),
        ),
      ),
    );
  }
}
