import 'package:flutter/widgets.dart';

/// Design tokens ported from the Nocturne design system
/// (`todo-list-mobile-design/project/_ds/.../styles.css`).
class AppColors {
  AppColors._();

  static const bg = Color(0xFF161826);
  static const surface = Color(0xFF232532);
  static const text = Color(0xFFE9E9ED);
  static const divider = Color(0x29E9E9ED); // color-mix(text 16%, transparent)

  static const accent = Color(0xFF9184D9);

  static const neutral100 = Color(0xFFF3F5FE);
  static const neutral200 = Color(0xFFE4E7F5);
  static const neutral300 = Color(0xFFCFD3E5);
  static const neutral400 = Color(0xFFB2B6CA);
  static const neutral500 = Color(0xFF9397AB);
  static const neutral600 = Color(0xFF75798C);
  static const neutral700 = Color(0xFF595D6C);
  static const neutral800 = Color(0xFF3F424D);
  static const neutral900 = Color(0xFF292B31);

  static const accent100 = Color(0xFFF5F4FF);
  static const accent200 = Color(0xFFE7E5FE);
  static const accent300 = Color(0xFFD2CEFD);
  static const accent400 = Color(0xFFB5ABFC);
  static const accent500 = Color(0xFF968AE0);
  static const accent600 = Color(0xFF796CBF);
  static const accent700 = Color(0xFF5D5294);
  static const accent800 = Color(0xFF423A6A);
  static const accent900 = Color(0xFF2B2741);
}

class AppSpacing {
  AppSpacing._();

  static const s1 = 2.8;
  static const s2 = 5.6;
  static const s3 = 8.4;
  static const s4 = 11.2;
  static const s6 = 16.8;
  static const s8 = 22.4;
}

class AppRadius {
  AppRadius._();

  static const sm = 4.0;
  static const md = 8.0;
  static const lg = 14.0;
}

/// Category color tokens used by [CategoryModel]. Each maps to a step on the
/// accent/neutral ramps, matching the `colorVar` values in the design's
/// seed data (`--color-accent-500`, `--color-accent-300`, `--color-neutral-400`,
/// `--color-accent-700`).
enum CategoryColor {
  accent500(AppColors.accent500),
  accent300(AppColors.accent300),
  neutral400(AppColors.neutral400),
  accent700(AppColors.accent700);

  const CategoryColor(this.value);
  final Color value;
}
