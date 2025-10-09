import 'package:flutter/material.dart';

class MySpacing extends StatelessWidget {
  final double width;
  final double height;

  const MySpacing({super.key, this.width = 16, this.height = 16});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}
