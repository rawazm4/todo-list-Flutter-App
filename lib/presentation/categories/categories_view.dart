import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_constants.dart';
import '../shared_widgets/async_state.dart';
import '../shared_widgets/nav_icons.dart';
import '../todo_list/todo_list_viewmodel.dart';
import '../../providers/todo_providers.dart';

class CategoriesView extends ConsumerWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataAsync = ref.watch(todoListViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        bottom: false,
        child: AsyncValueView(
          value: dataAsync,
          data: (data) => ListView(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
            children: [
              const Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                  letterSpacing: -0.3,
                  color: AppColors.text,
                ),
              ),
              const SizedBox(height: 18),
              for (final c in data.categories)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Material(
                    color: AppColors.neutral900,
                    borderRadius: BorderRadius.circular(AppRadius.md),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(AppRadius.md),
                      onTap: () {
                        ref.read(categoryFilterProvider.notifier).set(c.id);
                        context.go('/');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppRadius.md),
                          border: Border.all(
                            color: data.filterCategory == c.id
                                ? AppColors.accent500
                                : AppColors.neutral800,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                color: c.color.value,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    c.name,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: AppColors.text,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    '${data.openCountByCategory[c.id] ?? 0} open',
                                    style: const TextStyle(
                                      fontSize: 12.5,
                                      color: AppColors.neutral400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Opacity(
                              opacity: 0.5,
                              child: ChevronIcon(color: AppColors.neutral300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
