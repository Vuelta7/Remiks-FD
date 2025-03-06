import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

bool isMobileWeb(BuildContext context) {
  return kIsWeb && MediaQuery.of(context).size.width < 800;
}

Color themeColor = const Color.fromARGB(255, 238, 32, 35);
