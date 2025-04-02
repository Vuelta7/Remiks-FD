import 'package:flutter/material.dart';

class RemiksAbout extends StatelessWidget {
  const RemiksAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Center(
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 4,
              child: ColorFiltered(
                colorFilter:
                    ColorFilter.mode(Colors.deepOrange, BlendMode.srcIn),
                child: Image.asset(
                  'assets/remiks_vision.webp',
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset(
              'assets/remiks_vision.webp',
              width: 400,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
