import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_constants.dart';
import '../../providers/todo_providers.dart';
import '../shared_widgets/async_state.dart';
import 'todo_detail_viewmodel.dart';

class TodoDetailView extends ConsumerWidget {
  const TodoDetailView({super.key, required this.taskId});

  final String taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskAsync = ref.watch(selectedTaskProvider(taskId));
    final categories = ref.watch(categoriesProvider);
    final tasksNotifier = ref.read(tasksNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: AsyncValueView(
          value: taskAsync,
          data: (task) {
            if (task == null) return const SizedBox.shrink();
            final category = categories.firstWhere(
              (c) => c.id == task.categoryId,
              orElse: () => categories.first,
            );
            return Padding(
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
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.text,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () =>
                                  context.push('/task/$taskId/edit'),
                              child: const Text(
                                'Edit',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            const SizedBox(width: 8),
                            TextButton(
                              onPressed: () {
                                unawaited(tasksNotifier.deleteTask(taskId));
                                context.pop();
                              },
                              child: const Text(
                                'Delete',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.accent800,
                      borderRadius: BorderRadius.circular(AppRadius.md * 0.75),
                    ),
                    child: Text(
                      category.name,
                      style: const TextStyle(
                        fontSize: 11,
                        color: AppColors.accent100,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    task.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: AppColors.text,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Text('📅 ', style: TextStyle(fontSize: 14)),
                      Text(
                        task.dueLabel,
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColors.neutral300,
                        ),
                      ),
                    ],
                  ),
                  if (task.reminder) ...[
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        Text('🔔 ', style: TextStyle(fontSize: 14)),
                        Text(
                          'Reminder set',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.neutral300,
                          ),
                        ),
                      ],
                    ),
                  ],
                  if (task.notes.isNotEmpty) ...[
                    const SizedBox(height: 20),
                    Text(
                      task.notes,
                      style: const TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: AppColors.neutral300,
                      ),
                    ),
                  ],
                  const SizedBox(height: 28),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () => tasksNotifier.toggleDone(taskId),
                      child: Text(
                        task.done ? 'Mark as not done' : 'Mark complete',
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
