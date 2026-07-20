# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

A Flutter todo-list app backed by Firebase Auth (Google Sign-In) and Cloud Firestore, targeting Android and iOS. Currently in **Phase 1** — Google Sign-In auth is implemented; the todo CRUD features (Phase 4) are not yet built, only scaffolded.

## Commands

```bash
flutter pub get                       # install dependencies
flutter run                           # run on a connected device/simulator
flutter analyze                       # static analysis (flutter_lints via analysis_options.yaml)
flutter test                          # run all tests
flutter test test/widget_test.dart    # run a single test file
dart run build_runner build --delete-conflicting-outputs   # regenerate *.g.dart (riverpod_generator) after editing @riverpod providers
dart run build_runner watch --delete-conflicting-outputs   # regenerate continuously while developing
```

Code generation is required whenever a `@riverpod` annotated function/class changes — the corresponding `*.g.dart` file (e.g. `auth_providers.g.dart`, `app_router.g.dart`, `auth_viewmodel.g.dart`) must be regenerated via `build_runner`, not hand-edited.

## Architecture

The app follows a layered structure under `lib/`:

- `data/datasources/{remote,local}` — raw I/O: Firebase/Google Sign-In calls (`auth_remote_datasource.dart`), intended Firestore/local sources for todos (currently empty stubs).
- `data/repositories` — abstract repository interfaces (e.g. `auth_repository.dart`) plus `*_impl.dart` implementations that wrap datasources. Repositories are the boundary between data and presentation.
- `data/models` — data models (todo model stubbed, not yet implemented; expected to use `freezed`/`json_serializable`-style annotations given the `freezed_annotation` dependency).
- `providers/` — Riverpod DI graph. `auth_providers.dart` wires `FirebaseAuth` → `GoogleSignIn` → `AuthRemoteDataSource` → `AuthRepository` → `authStateChanges` stream, each as a `@riverpod` provider. `repository_providers.dart` is reserved for todo repository wiring (not yet populated).
- `presentation/<feature>/` — one folder per feature (`auth`, `todo_list`, `todo_detail`), each with a `*_view.dart` (widget) and `*_viewmodel.dart` (a `@riverpod` `AsyncNotifier` driving that view). Only `auth` is implemented; `todo_list` has a placeholder view with no viewmodel yet, `todo_detail` is fully empty.
- `core/router/app_router.dart` — single `GoRouter` instance provided via Riverpod (`appRouterProvider`). Auth state drives navigation: a `ChangeNotifier` wrapping `authRepositoryProvider.authStateChanges` triggers `refreshListenable`, and the `redirect` callback sends signed-out users to `/sign-in` and signed-in users away from it. New routes should be added to the `routes` list here.
- `core/theme`, `core/constants`, `core/utils` — currently empty stubs reserved for shared theming, constants, and extension methods.
- `lib/firebase_options.dart` — generated Firebase config (per-platform `FirebaseOptions`); do not hand-edit, regenerate with the FlutterFire CLI if Firebase config changes.

### Auth flow

`AuthRemoteDataSource` (Firebase + Google Sign-In SDK calls) → `AuthRepositoryImpl` (implements `AuthRepository`) → consumed by `AuthViewModel` (`@riverpod` `AsyncNotifier`, exposes `signInWithGoogle`/`signOut`) → `SignInView` (watches `authViewModelProvider`, shows loading/error state). The same `authRepositoryProvider.authStateChanges` stream also drives router redirects, so sign-in/sign-out automatically triggers navigation — no manual `context.go()` calls needed after auth actions.

When adding the todo feature, follow the same datasource → repository → viewmodel → view layering established by the auth slice, and wire providers through `repository_providers.dart`.
