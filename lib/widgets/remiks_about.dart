import 'package:flutter/material.dart';

class RemiksAbout extends StatelessWidget {
  const RemiksAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 4,
          left: 5,
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.orange[900]!, BlendMode.srcIn),
            child: Image.asset(
              'assets/remiks_about_us.webp',
              width: 500,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Image.asset(
          'assets/remiks_about_us.webp',
          width: 500,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
