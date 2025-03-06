import 'package:flutter/material.dart';

class RemiksText extends StatelessWidget {
  final String text;
  final double fontSize;
  const RemiksText({super.key, required this.fontSize, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Bitshow',
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
