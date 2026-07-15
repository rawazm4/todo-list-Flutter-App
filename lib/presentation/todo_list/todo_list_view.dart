import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../auth/auth_viewmodel.dart';

/// Placeholder for Phase 4 — replaced by the real todo list UI.
class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Todos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () =>
                ref.read(authViewModelProvider.notifier).signOut(),
          ),
        ],
      ),
      body: const Center(child: Text('Todo list coming in Phase 4')),
    );
  }
}
