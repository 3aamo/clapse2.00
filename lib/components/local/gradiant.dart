import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;

  GradientText(
    String label2, {
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Color(0xFF4285F4), Color(0xFF8E44AD)], // رنگ‌های گرادینت
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height)),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white), // رنگ اولیه متن
      ),
    );
  }
}
