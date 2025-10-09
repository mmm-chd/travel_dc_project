import 'package:dicoding_project/components/colors/mycolor.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final IconData? icon;
  final bool suffixIcon;
  final TextEditingController? controller;
  final Color? fillColor;

  const MyTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.controller,
    this.suffixIcon = false,
    this.fillColor,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        controller: widget.controller,
        cursorColor: SupportColor.black,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.fillColor ?? SupportColor.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none,
          ),
          hintText: widget.hintText,
          suffixIcon: widget.suffixIcon ? Icon(widget.icon) : null,
        ),
      ),
    );
  }
}
