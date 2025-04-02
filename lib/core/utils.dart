import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

bool isMobileWeb(BuildContext context) {
  return kIsWeb && MediaQuery.of(context).size.width < 800;
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

Color themeColor = const Color.fromARGB(255, 238, 32, 35);

final selectedPage = StateProvider<int>((ref) => 0);

const List<Map<String, dynamic>> products = [
  {
    'image': 'assets/chicken_pastil.png',
    'name': 'Chicken Pastil',
    'description':
        'authentic, flavorful shredded chicken cooked in rich spices, ready to enjoy anytime.',
    'price': '₱170',
    'bgColor': Colors.orange
  },
  {
    'image': 'assets/chili_garlic.png',
    'name': 'Chili Garlic',
    'description':
        'spicy blend of garlic and chili for an irresistible kick to any dish.',
    'price': '₱110',
    'bgColor': Colors.orange
  },
  {
    'image': 'assets/ginisang_alamang.png',
    'name': 'Ginisang Alamang',
    'description':
        'A savory blend of fermented shrimp, perfect for dips, rice, and cooking.',
    'price': '₱90',
    'bgColor': Colors.orange
  },
  {
    'image': 'assets/hot_sauce.png',
    'name': 'Hot Sauce',
    'description': 'A perfect balance of heat and taste for chili lovers.',
    'price': '₱170',
    'bgColor': Colors.orange
  },
  {
    'image': 'assets/sawsaw_suka.png',
    'name': 'Saw Saw Suka',
    'description': 'A Filipino classic vinegar dip.',
    'price': '₱95',
    'bgColor': Colors.orange
  },
  {
    'image': 'assets/chili_shots.png',
    'name': 'Chili Shots',
    'description': 'The ultimate way to enjoy spicy heat in a single shot.',
    'price': '₱70',
    'bgColor': Colors.orange
  },
];

final locationProvider = FutureProvider<LatLng?>((ref) async {
  LocationPermission permission = await Geolocator.requestPermission();
  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    return null;
  }

  Position position = await Geolocator.getCurrentPosition();
  return LatLng(position.latitude, position.longitude);
});
