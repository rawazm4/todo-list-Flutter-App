import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/app_constants.dart';
import '../../providers/todo_providers.dart';
import '../shared_widgets/async_state.dart';

class ArchiveView extends ConsumerWidget {
  const ArchiveView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksAsync = ref.watch(tasksNotifierProvider);
    final categories = ref.watch(categoriesProvider);
    final categoryById = {for (final c in categories) c.id: c};
    final tasksNotifier = ref.read(tasksNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        bottom: false,
        child: AsyncValueView(
          value: tasksAsync,
          data: (tasks) {
            final done = tasks.where((t) => t.done).toList();
            return ListView(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
              children: [
                const Text(
                  'Archive',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    letterSpacing: -0.3,
                    color: AppColors.text,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${done.length} completed',
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.neutral300,
                  ),
                ),
                const SizedBox(height: 16),
                if (done.isEmpty)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 4),
                    child: Center(
                      child: Text(
                        'Nothing archived yet.',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.neutral400,
                        ),
                      ),
                    ),
                  )
                else
                  for (final t in done)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.neutral900,
                          borderRadius: BorderRadius.circular(AppRadius.md),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                color:
                                    categoryById[t.categoryId]?.color.value ??
                                    AppColors.neutral400,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    t.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 14.5,
                                      color: AppColors.neutral400,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    '${categoryById[t.categoryId]?.name ?? ''} · ${t.completedLabel ?? ''}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: AppColors.neutral500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () => tasksNotifier.toggleDone(t.id),
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                textStyle: const TextStyle(fontSize: 12),
                              ),
                              child: const Text('Restore'),
                            ),
                          ],
                        ),
                      ),
                    ),
              ],
            );
          },
        ),
      ),
    );
  }
}
