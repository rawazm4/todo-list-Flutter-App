import 'package:flutter/material.dart';

import '../../../core/constants/app_constants.dart';
import '../../../data/models/todo_model.dart';
import '../../shared_widgets/nav_icons.dart';

/// A task row on the Home screen. Swiping right reveals a "Done" action,
/// swiping left reveals "Delete" — implemented with [Dismissible], the
/// idiomatic Flutter analog of the design's custom pointer-drag reveal.
class TaskRow extends StatelessWidget {
  const TaskRow({
    super.key,
    required this.task,
    required this.category,
    required this.onToggle,
    required this.onDelete,
    required this.onOpen,
  });

  final TaskModel task;
  final CategoryModel category;
  final VoidCallback onToggle;
  final VoidCallback onDelete;
  final VoidCallback onOpen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Dismissible(
        key: ValueKey(task.id),
        background: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: AppColors.accent800,
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
          child: const Text(
            '✓ Done',
            style: TextStyle(color: AppColors.accent100, fontSize: 13),
          ),
        ),
        secondaryBackground: Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: AppColors.neutral800,
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
          child: const Text(
            'Delete ✕',
            style: TextStyle(color: AppColors.neutral200, fontSize: 13),
          ),
        ),
        confirmDismiss: (direction) async => true,
        onDismissed: (direction) {
          if (direction == DismissDirection.startToEnd) {
            onToggle();
          } else {
            onDelete();
          }
        },
        child: Material(
          color: AppColors.neutral900,
          borderRadius: BorderRadius.circular(AppRadius.md),
          child: InkWell(
            onTap: onOpen,
            borderRadius: BorderRadius.circular(AppRadius.md),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: onToggle,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.accent400,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          task.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 15,
                            color: AppColors.text,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                color: category.color.value,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                '${category.name} · ${task.dueLabel}',
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: AppColors.neutral400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Opacity(
                    opacity: 0.5,
                    child: ChevronIcon(color: AppColors.neutral300),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
