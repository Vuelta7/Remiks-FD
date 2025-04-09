import 'dart:async';

import 'package:flutter/material.dart';
import 'package:remiksweb/core/utils.dart';

class ProductShowcase extends StatefulWidget {
  const ProductShowcase({super.key});

  @override
  _ProductShowcaseState createState() => _ProductShowcaseState();
}

class _ProductShowcaseState extends State<ProductShowcase> {
  int _currentIndex = 0;
  double _opacity = 1.0;
  final List<String> _images = [
    'assets/chili_shots.png',
    'assets/ginisang_alamang.webp',
    'assets/sawsaw_suka.png',
    'assets/chicken_pastil.webp',
    'assets/hot_sauce.png',
    'assets/chili_garlic.webp',
    'assets/chicken_oil.webp'
  ];

  @override
  void initState() {
    super.initState();
    _startFadeTransition();
  }

  void _startFadeTransition() {
    Timer.periodic(const Duration(seconds: 4), (timer) {
      setState(() {
        _opacity = 0.0;
      });

      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          _currentIndex = (_currentIndex + 1) % _images.length;
          _opacity = 1.0;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          AnimatedOpacity(
            duration: const Duration(seconds: 1),
            opacity: _opacity,
            child: Image.asset(
              _images[_currentIndex],
              fit: BoxFit.cover,
              width: isMobileWeb(context) ? 200 : 300,
              height: isMobileWeb(context) ? 300 : 500,
            ),
          ),
        ],
      ),
    );
  }
}
