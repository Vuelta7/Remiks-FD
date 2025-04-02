import 'package:flutter/material.dart';
import 'package:remiksweb/core/utils.dart';

class RemiksFB extends StatelessWidget {
  const RemiksFB({super.key});

  @override
  Widget build(BuildContext context) {
    final image =
        isMobileWeb(context) ? 'assets/fb_mobile.webp' : 'assets/facebook.webp';

    return SizedBox(
      width: isMobileWeb(context) ? 340 : 820,
      height: isMobileWeb(context) ? 500 : 460,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red[900]!, BlendMode.srcIn),
              child: Image.asset(
                image,
                width: isMobileWeb(context) ? 330 : 810,
                height: isMobileWeb(context) ? 490 : 450,
              ),
            ),
          ),
          Image.asset(
            image,
            width: isMobileWeb(context) ? 330 : 810,
            height: isMobileWeb(context) ? 490 : 450,
          ),
        ],
      ),
    );
  }
}
