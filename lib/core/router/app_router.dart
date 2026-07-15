import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentation/auth/sign_in_view.dart';
import '../../presentation/todo_list/todo_list_view.dart';
import '../../providers/auth_providers.dart';

part 'app_router.g.dart';

class _AuthChangeNotifier extends ChangeNotifier {
  _AuthChangeNotifier(Stream<User?> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<User?> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

@riverpod
GoRouter appRouter(Ref ref) {
  final authNotifier = _AuthChangeNotifier(
    ref.watch(authRepositoryProvider).authStateChanges,
  );
  ref.onDispose(authNotifier.dispose);

  return GoRouter(
    initialLocation: '/',
    refreshListenable: authNotifier,
    redirect: (context, state) {
      final isLoggedIn = ref.read(authRepositoryProvider).currentUser != null;
      final isSigningIn = state.matchedLocation == '/sign-in';

      if (!isLoggedIn && !isSigningIn) {
        return '/sign-in';
      }
      if (isLoggedIn && isSigningIn) {
        return '/';
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const TodoListView(),
      ),
      GoRoute(
        path: '/sign-in',
        builder: (context, state) => const SignInView(),
      ),
    ],
  );
}
