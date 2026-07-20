import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/app_constants.dart';

/// Renders `value.data` once it's available, a centered spinner while
/// loading, and a short error message on failure — the loading/error
/// treatment every Firestore-backed screen needs, kept in one place instead
/// of five separate `.when()` blocks.
class AsyncValueView<T> extends StatelessWidget {
  const AsyncValueView({super.key, required this.value, required this.data});

  final AsyncValue<T> value;
  final Widget Function(T data) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      loading: () => const Center(
        child: CircularProgressIndicator(color: AppColors.accent),
      ),
      error: (error, stackTrace) => Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            'Something went wrong.\n$error',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, color: AppColors.neutral400),
          ),
        ),
      ),
    );
  }
}
