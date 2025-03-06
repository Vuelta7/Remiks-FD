import 'package:flutter/material.dart';

class RemiksText extends StatelessWidget {
  final String text;
  final double fontSize;
  final String font;
  const RemiksText(
      {super.key,
      required this.fontSize,
      required this.text,
      required this.font});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: font,
        fontSize: fontSize,
        color: Colors.red,
        shadows: [
          Shadow(
            offset: Offset(3, 3),
            color: Colors.red[900]!,
            blurRadius: 0,
          ),
        ],
      ),
    );
  }
}
