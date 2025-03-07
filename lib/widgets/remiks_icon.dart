import 'package:flutter/material.dart';

class RemiksIcon extends StatelessWidget {
  final IconData icon;

  const RemiksIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.red,
      size: 50,
      shadows: [
        Shadow(
          offset: Offset(1, 1),
          color: Colors.red[900]!,
          blurRadius: 0,
        ),
      ],
    );
  }
}
