import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/archive/archive_view.dart';
import '../../presentation/categories/categories_view.dart';
import '../../presentation/shared_widgets/bottom_tab_bar.dart';
import '../../presentation/todo_detail/todo_detail_view.dart';
import '../../presentation/todo_edit/todo_edit_view.dart';
import '../../presentation/todo_list/todo_list_view.dart';

/// Tasks/Categories/Archive sit behind a bottom tab bar (`StatefulShellRoute`
/// keeps each tab's scroll/filter state alive via an `IndexedStack`).
/// Detail and Add/Edit are full-screen push routes outside the shell, so
/// they get the back-arrow header and hide the tab bar/FAB, matching the
/// design's `isDetail`/`isAdd` screens.
///
/// Auth is currently non-functional (stripped in a previous refactor), so
/// this intentionally routes straight to the todo UI with no auth redirect.
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return Scaffold(
          body: navigationShell,
          bottomNavigationBar: BottomTabBar(
            currentIndex: navigationShell.currentIndex,
            onTap: (index) => navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            ),
          ),
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const TodoListView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/categories',
              builder: (context, state) => const CategoriesView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/archive',
              builder: (context, state) => const ArchiveView(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/task/new',
      builder: (context, state) => const TodoEditView(),
    ),
    GoRoute(
      path: '/task/:id',
      builder: (context, state) =>
          TodoDetailView(taskId: state.pathParameters['id']!),
    ),
    GoRoute(
      path: '/task/:id/edit',
      builder: (context, state) =>
          TodoEditView(editingId: state.pathParameters['id']!),
    ),
  ],
);
