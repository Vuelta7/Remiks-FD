import 'package:flutter/material.dart';

class RemiksText extends StatelessWidget {
  final String text;
  final double fontSize;
  final String font;
  final Color color;
  const RemiksText({
    super.key,
    required this.fontSize,
    required this.text,
    required this.font,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: font,
        fontSize: fontSize,
        color: color,
        shadows: [
          Shadow(
            offset: Offset(2, 2),
            color: Colors.red[900]!,
            blurRadius: 0,
          ),
        ],
      ),
    );
  }
}
