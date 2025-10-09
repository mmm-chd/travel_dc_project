import 'package:flutter/material.dart';

class MyIconButton extends StatefulWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final double iconSize;

  const MyIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.iconSize = 30,
  });

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: widget.onPressed,
      icon: Icon(widget.icon, size: widget.iconSize),
    );
  }
}
