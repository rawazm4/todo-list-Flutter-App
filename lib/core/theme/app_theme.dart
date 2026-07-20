import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_constants.dart';

/// ThemeData built from the Nocturne design system tokens. Dark-only —
/// the design mockup is a single dark theme (`dark="{{ true }}"`).
class AppTheme {
  AppTheme._();

  static ThemeData get dark {
    final textTheme = GoogleFonts.interTextTheme(
      ThemeData.dark().textTheme,
    ).apply(bodyColor: AppColors.text, displayColor: AppColors.text);

    final colorScheme = const ColorScheme.dark(
      surface: AppColors.bg,
      primary: AppColors.accent,
      secondary: AppColors.accent,
      onSurface: AppColors.text,
      onPrimary: AppColors.neutral900,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.bg,
      colorScheme: colorScheme,
      fontFamily: GoogleFonts.inter().fontFamily,
      textTheme: textTheme,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      dividerColor: AppColors.divider,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: const BorderSide(color: AppColors.divider),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: const BorderSide(color: AppColors.divider),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: const BorderSide(color: AppColors.accent),
        ),
        hintStyle: const TextStyle(color: AppColors.neutral500, fontSize: 14),
        labelStyle: const TextStyle(color: AppColors.neutral300, fontSize: 12),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.accent,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.accent,
          side: const BorderSide(color: AppColors.accent),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
        ),
      ),
    );
  }
}
