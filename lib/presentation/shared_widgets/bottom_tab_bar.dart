import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import 'nav_icons.dart';

/// The 3-tab bottom bar shown on the Tasks/Categories/Archive screens
/// (hidden on Detail/Add). Height 78 + 18 bottom padding, per the design.
class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      padding: const EdgeInsets.only(bottom: 18),
      decoration: const BoxDecoration(
        color: AppColors.neutral900,
        border: Border(top: BorderSide(color: AppColors.neutral800)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TabButton(
            label: 'Tasks',
            selected: currentIndex == 0,
            icon: (color) => HomeNavIcon(color: color),
            onTap: () => onTap(0),
          ),
          _TabButton(
            label: 'Categories',
            selected: currentIndex == 1,
            icon: (color) => CategoriesNavIcon(color: color),
            onTap: () => onTap(1),
          ),
          _TabButton(
            label: 'Archive',
            selected: currentIndex == 2,
            icon: (color) => ArchiveNavIcon(color: color),
            onTap: () => onTap(2),
          ),
        ],
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  const _TabButton({
    required this.label,
    required this.selected,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final Widget Function(Color color) icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? AppColors.accent300 : AppColors.neutral400;
    return InkWell(
      onTap: onTap,
      customBorder: const StadiumBorder(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon(color),
            const SizedBox(height: 4),
            Text(label, style: TextStyle(color: color, fontSize: 11)),
          ],
        ),
      ),
    );
  }
}
