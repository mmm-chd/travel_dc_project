import 'package:flutter/material.dart';

class MyTextBold extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final double fontSize;

  const MyTextBold({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.bold,
    this.textAlign = TextAlign.center,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(fontWeight: fontWeight, fontSize: fontSize),
    );
  }
}
