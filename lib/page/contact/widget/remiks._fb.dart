import 'package:flutter/material.dart';
import 'package:remiksweb/core/utils.dart';

class RemiksFB extends StatelessWidget {
  const RemiksFB({super.key});

  @override
  Widget build(BuildContext context) {
    final image =
        isMobileWeb(context) ? 'assets/fb_mobile.webp' : 'assets/facebook.webp';

    return SizedBox(
      height: 410,
      width: isMobileWeb(context) ? 280 : 810,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red[900]!, BlendMode.srcIn),
              child: Image.asset(
                image,
                height: 400,
              ),
            ),
          ),
          Image.asset(
            image,
            height: 400,
          ),
        ],
      ),
    );
  }
}
