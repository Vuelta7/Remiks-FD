import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return isMobileWeb(context)
        ? Image.asset('assets/remiks_vision.webp')
        : Container();
  }
}
