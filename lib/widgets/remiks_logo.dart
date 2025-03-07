import 'package:flutter/material.dart';

class RemiksLogo extends StatelessWidget {
  final double size;
  const RemiksLogo({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size + 10,
      height: size + 10,
      child: Stack(
        children: [
          Positioned(
            top: 3,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red[900]!, BlendMode.srcIn),
              child: Image.asset(
                'assets/remiks_logo.png',
                height: size,
                width: size,
              ),
            ),
          ),
          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
            child: Image.asset(
              'assets/remiks_logo.png',
              height: size,
              width: size,
            ),
          ),
        ],
      ),
    );
  }
}
