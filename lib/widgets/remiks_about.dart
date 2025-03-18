import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';

class RemiksAbout extends StatelessWidget {
  const RemiksAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Stack(
        children: [
          Positioned(
            top: isMobileWeb(context) ? 3 : 5,
            left: isMobileWeb(context) ? 2 : 4,
            child: ColorFiltered(
              colorFilter:
                  ColorFilter.mode(Colors.orange[900]!, BlendMode.srcIn),
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
      ),
    );
  }
}
