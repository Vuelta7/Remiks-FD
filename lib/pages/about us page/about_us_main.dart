import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';

class AboutUsMain extends StatelessWidget {
  const AboutUsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return isMobileWeb(context)
        ? Image.asset(
            'assets/remiks_vision.webp',
            fit: BoxFit.cover,
          )
        : Container();
  }
}
