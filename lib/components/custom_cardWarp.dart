import 'package:flutter/material.dart';

class CustomCardwrap extends StatelessWidget {
  final Widget child;
  final Color? color, borderColor;
  final double? borderRadius;
  const CustomCardwrap({
    super.key,
    required this.child,
    this.color,
    this.borderColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
        border: Border.all(color: borderColor ?? Colors.grey.shade300),
      ),
      child: child,
    );
  }
}
