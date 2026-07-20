import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_constants.dart';
import '../../data/models/todo_model.dart';
import '../../providers/todo_providers.dart';
import '../shared_widgets/async_state.dart';
import 'todo_list_viewmodel.dart';
import 'widgets/category_chip.dart';
import 'widgets/task_row.dart';

class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataAsync = ref.watch(todoListViewModelProvider);
    final tasksNotifier = ref.read(tasksNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: AppColors.bg,
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/task/new'),
        backgroundColor: AppColors.neutral900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: const BorderSide(color: AppColors.accent400, width: 1.5),
        ),
        elevation: 0,
        child: const Text(
          '+',
          style: TextStyle(fontSize: 26, color: AppColors.accent200, height: 1),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: AsyncValueView(
          value: dataAsync,
          data: (data) {
            final categoryById = {for (final c in data.categories) c.id: c};
            return CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(20, 24, 20, 4),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tasks',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            letterSpacing: -0.3,
                            color: AppColors.text,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${data.activeCount} tasks left',
                          style: const TextStyle(
                            fontSize: 13,
                            color: AppColors.neutral300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 40,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.fromLTRB(20, 14, 20, 4),
                      itemCount: data.categories.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                      itemBuilder: (context, index) {
                        final c = data.categories[index];
                        return CategoryChip(
                          category: c,
                          selected: data.filterCategory == c.id,
                          onTap: () => ref
                              .read(categoryFilterProvider.notifier)
                              .toggle(c.id),
                        );
                      },
                    ),
                  ),
                ),
                if (data.hasAnyActive) ...[
                  if (data.todayTasks.isNotEmpty)
                    _Section(
                      title: 'Today',
                      tasks: data.todayTasks,
                      categoryById: categoryById,
                      tasksNotifier: tasksNotifier,
                    ),
                  if (data.tomorrowTasks.isNotEmpty)
                    _Section(
                      title: 'Tomorrow',
                      tasks: data.tomorrowTasks,
                      categoryById: categoryById,
                      tasksNotifier: tasksNotifier,
                    ),
                  if (data.upcomingTasks.isNotEmpty)
                    _Section(
                      title: 'Upcoming',
                      tasks: data.upcomingTasks,
                      categoryById: categoryById,
                      tasksNotifier: tasksNotifier,
                    ),
                  const SliverToBoxAdapter(child: SizedBox(height: 96)),
                ] else
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: _EmptyState(),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.title,
    required this.tasks,
    required this.categoryById,
    required this.tasksNotifier,
  });

  final String title;
  final List<TaskModel> tasks;
  final Map<String, CategoryModel> categoryById;
  final TasksNotifier tasksNotifier;

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 8),
            child: Text(
              title.toUpperCase(),
              style: const TextStyle(
                fontSize: 11.5,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6,
                color: AppColors.neutral400,
              ),
            ),
          ),
        ),
        SliverList.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final task = tasks[index];
            return TaskRow(
              task: task,
              category: categoryById[task.categoryId]!,
              onToggle: () => tasksNotifier.toggleDone(task.id),
              onDelete: () => tasksNotifier.deleteTask(task.id),
              onOpen: () => context.push('/task/${task.id}'),
            );
          },
        ),
      ],
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'All caught up.',
              style: TextStyle(fontSize: 15, color: AppColors.neutral300),
            ),
            SizedBox(height: 4),
            Text(
              'No tasks in this view.',
              style: TextStyle(fontSize: 13, color: AppColors.neutral500),
            ),
          ],
        ),
      ),
    );
  }
}
