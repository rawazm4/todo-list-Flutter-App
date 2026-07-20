import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'data/datasources/local/todo_local_datasource.dart';
import 'data/datasources/remote/todo_remote_datasource.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // One-time seed so the Firestore `tasks` collection isn't empty on first
  // run; no-ops once it already has documents. Fire-and-forget — the UI
  // shows its own loading state via AsyncValue until the stream delivers.
  unawaited(
    TodoRemoteDataSource(
      firestore: FirebaseFirestore.instance,
    ).seedIfEmpty(TodoLocalDataSource().getSeedTasks()),
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Todolist',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      routerConfig: appRouter,
    );
  }
}
