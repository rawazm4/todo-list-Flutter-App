import 'package:flutter/material.dart';

import '../../../core/constants/app_constants.dart';
import '../../../data/models/todo_model.dart';

/// The pill-shaped category filter/picker chip used on the Home screen's
/// filter row and the Add/Edit screen's category picker.
class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.category,
    required this.selected,
    required this.onTap,
  });

  final CategoryModel category;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: selected ? AppColors.accent900 : Colors.transparent,
          borderRadius: BorderRadius.circular(999),
          border: Border.all(
            color: selected ? AppColors.accent500 : AppColors.neutral700,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                color: category.color.value,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 6),
            Text(
              category.name,
              style: const TextStyle(
                fontSize: 12.5,
                color: AppColors.neutral200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
