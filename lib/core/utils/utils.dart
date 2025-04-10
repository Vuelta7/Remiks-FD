import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

bool isMobileWeb(BuildContext context) {
  return kIsWeb && MediaQuery.of(context).size.width < 1000;
}

Color getShade(Color color, int shade) {
  assert(shade >= 100 && shade <= 900 && shade % 100 == 0);
  final int r = color.red;
  final int g = color.green;
  final int b = color.blue;
  final double factor = (shade / 1000).clamp(0.0, 1.0);
  return Color.fromRGBO(
    (r * factor).toInt(),
    (g * factor).toInt(),
    (b * factor).toInt(),
    1,
  );
}

final selectedPage = StateProvider<int>((ref) => 0);
