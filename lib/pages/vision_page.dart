import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';

class VisionPage extends StatelessWidget {
  const VisionPage({super.key});

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
