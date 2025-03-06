import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatelessWidget {
  const ProductCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 600.0,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(seconds: 2),
          autoPlayCurve: Curves.linearToEaseOut,
          viewportFraction: 1.0,
          enableInfiniteScroll: true,
          scrollPhysics: AlwaysScrollableScrollPhysics(),
        ),
        items: [
          Image.asset(
            'assets/chili_garlic.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/chicken_pastil.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/ginisang_alamang.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
