import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todolist/data/repositories/auth_repository.dart';
import 'package:todolist/presentation/auth/sign_in_view.dart';

class _FakeAuthRepository implements AuthRepository {
  @override
  Stream<User?> get authStateChanges => const Stream.empty();

  @override
  User? get currentUser => null;

  @override
  Future<User?> signInWithGoogle() async => null;

  @override
  Future<void> signOut() async {}
}

void main() {
  testWidgets('SignInView shows welcome message and sign-in button',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(home: SignInView(authRepository: _FakeAuthRepository())),
    );

    expect(find.text('Welcome to Todolist'), findsOneWidget);
    expect(find.text('Sign in with Google'), findsOneWidget);
  });
}
