import 'package:flutter/material.dart';

class RemiksImage extends StatelessWidget {
  final String image;
  final double height;
  const RemiksImage({
    super.key,
    required this.image,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: height * 0.62,
      height: height + 10,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red[900]!, BlendMode.srcIn),
              child: Image.asset(image, height: height),
            ),
          ),
          Image.asset(image, height: height),
        ],
      ),
    );
  }
}
