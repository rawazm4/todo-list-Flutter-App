import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todolist/core/theme/app_theme.dart';
import 'package:todolist/presentation/todo_list/todo_list_view.dart';

void main() {
  testWidgets('TodoListView shows the seeded tasks grouped by section', (
    tester,
  ) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(theme: AppTheme.dark, home: const TodoListView()),
      ),
    );

    expect(find.text('Tasks'), findsOneWidget);
    expect(find.text('TODAY'), findsOneWidget);
    expect(find.text('Finalize Q3 roadmap deck'), findsOneWidget);
  });
}
