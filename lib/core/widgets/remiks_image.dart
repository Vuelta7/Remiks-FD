import 'package:flutter/material.dart';

class RemiksImage extends StatelessWidget {
  final String image;
  final double height;
  final double? width;
  const RemiksImage({
    super.key,
    required this.image,
    required this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final double calculatedWidth = width ?? height * 0.62;
    return SizedBox(
      width: calculatedWidth,
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
