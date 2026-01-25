import 'package:dicoding_project/components/custom_text.dart';
import 'package:dicoding_project/configs/themes_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomChipsimage extends StatelessWidget {
  final bool selected;
  final String label;
  final Color? selectedColor, defaultColor, shadowColor;
  final VoidCallback onTap;
  final double borderRadius;

  const CustomChipsimage({
    super.key,
    required this.selected,
    required this.label,
    required this.onTap,
    this.selectedColor,
    this.defaultColor,
    this.shadowColor,
    this.borderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOutCubic,
        padding: EdgeInsets.symmetric(
          horizontal: selected ? 15 : 14,
          vertical: selected ? 12 : 12,
        ),
        decoration: BoxDecoration(
          color: selected
              ? (selectedColor ?? PColor.primary)
              : (defaultColor ?? Colors.grey.shade200),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color:
                        shadowColor ??
                        (selectedColor ?? PColor.primary).withOpacity(0.3),
                    blurRadius: 12,
                    offset: Offset(0, 3),
                  ),
                ]
              : [],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.linear,
              decoration: BoxDecoration(
                color: selected ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SvgPicture.asset('assets/icons/mountain.svg', width: 36),
            ),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: TextStyle(
                color: selected ? Colors.white : Colors.black87,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                fontSize: selected ? 15 : 14,
              ),
              child: CustomText(text: label),
            ),
          ],
        ),
      ),
    );
  }
}
