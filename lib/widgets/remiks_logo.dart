import 'package:flutter/material.dart';

class RemiksLogo extends StatelessWidget {
  const RemiksLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 160,
      child: Stack(
        children: [
          Positioned(
            top: 3,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red[900]!, BlendMode.srcIn),
              child: Image.asset(
                'assets/remiks_logo.png',
                height: 150,
                width: 150,
              ),
            ),
          ),
          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
            child: Image.asset(
              'assets/remiks_logo.png',
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
