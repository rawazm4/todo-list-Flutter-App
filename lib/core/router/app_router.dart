// import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:go_router/go_router.dart';

// class _AuthChangeNotifier extends ChangeNotifier {
//   _AuthChangeNotifier(Stream<User?> stream) {
//     _subscription = stream.listen((_) => notifyListeners());
//   }

//   late final StreamSubscription<User?> _subscription;

//   @override
//   void dispose() {
//     _subscription.cancel();
//     super.dispose();
//   }
// }

// GoRouter createAppRouter() {
//   final authRepository = AuthRepositoryImpl(
//     remoteDataSource: AuthRemoteDataSource(
//       firebaseAuth: FirebaseAuth.instance,
//       googleSignIn: GoogleSignIn(),
//     ),
//   );
//   final authNotifier = _AuthChangeNotifier(authRepository.authStateChanges);

//   return GoRouter(
//     initialLocation: '/',
//     refreshListenable: authNotifier,
//     redirect: (context, state) {
//       final isLoggedIn = authRepository.currentUser != null;
//       final isSigningIn = state.matchedLocation == '/sign-in';

//       if (!isLoggedIn && !isSigningIn) {
//         return '/sign-in';
//       }
//       if (isLoggedIn && isSigningIn) {
//         return '/';
//       }
//       return null;
//     },
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (context, state) =>
//             TodoListView(authRepository: authRepository),
//       ),
//       GoRoute(
//         path: '/sign-in',
//         builder: (context, state) => SignInView(authRepository: authRepository),
//       ),
//     ],
//   );
// }
